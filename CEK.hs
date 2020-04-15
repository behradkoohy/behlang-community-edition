import Grammar
import Tokens
import Data.Map.Strict as M
import Data.Maybe
import Debug.Trace as D
import System.Environment (getArgs)
import System.IO (openFile, hGetContents)
import System.IO( IOMode( ReadMode ) )



data Frame  = HoleApp Expr E 
            | AppHole Expr 
            | IfHole Expr Expr 
            | IntBinOpHole String Expr Char -- char is side that non-int is on
            | CompBinHole String Expr
            | WhileHole Expr Expr  
            | ContEvalHole Expr 
            | PRINTING
            | LOADING
            | ListAccHole Expr Char -- char is side being evaluated
            deriving (Show, Eq)




type E = Map [Char] Expr
type K = [ Frame ]


data Queue a = Queue [a] deriving (Show)
push :: a -> Queue a -> Queue a
push e (Queue es) = Queue (es ++ [e])

-- -- Precondition: Queue is not empty
-- pop :: Queue a -> (a, Queue a)
-- pop (Queue xs) = (head xs, Queue $ tail xs)

-- -- Precondition: Queue is not empty
-- peek (Queue (x:xs)) = x

eval1 :: (Expr, E, K) -> (Expr, E, K)
-- Primitive type return
eval1 ((Bool b), e, [])      = ((Bool b), e, [])
eval1 ((Int x), e, [])       = ((Int x), e, [])
eval1 ((ListStr x), e, [])      = ((ListStr x), e, [])
-- Primitive type exp
-- eval1 ((Bool b), e, ((IntBinOpHole op ex):ks))      = ((Bool b), e, ks) -- This shouldnt happen??
eval1 ((Int x), e, ((IntBinOpHole op ex 'L'):ks))       = eval1 ((IntBinOp op (Int x) ex), e, ks)
eval1 ((Int x), e, ((IntBinOpHole op ex 'R'):ks))       = eval1 ((IntBinOp op ex (Int x)), e, ks)

-- eval1 ((Bool b), e, ((CompBinHole op ex):ks))       = eval1 ((Bool b), e, ks) -- This shouldnt happen??
eval1 ((Int x), e, ((CompBinHole op ex):ks))        = eval1 ((CompBinOp op ex (Int x)), e, ks) -- This shouldnt happen??
eval1 ((Int x), e, (ListAccHole expr 'R'):ks)       = eval1 (ListAcc expr (Int x), e , ks)
eval1 ((ListStr x), e, ((ListAccHole expr 'L'):ks)) = eval1 (ListAcc (ListStr x) expr, e, ks)


eval1 ((Int x), e, ((ContEvalHole exp2):ks))         = eval1 (exp2, e, ks)
eval1 ((Bool b), e, ((ContEvalHole exp2):ks))        = eval1 (exp2, e, ks)
eval1 ((ListStr x), e, ((ContEvalHole exp2):ks))        = eval1 (exp2, e, ks)
-- While loops
eval1 ((Int x), e,  ((WhileHole cond expr):ks))        = eval1 ((WhileLoop cond expr), e, ks)
eval1 ((Bool b), e, ((WhileHole cond expr):ks))        = eval1 ((WhileLoop cond expr), e, ks)

-- Variables
eval1 ((VarDec key val), e, k) = eval1 (v, insOrUpdMap key v e, k)
                                where v = (fst3 (eval1 (val, e, [])))

-- eval1 ((VarDec key val), e, k) = (fst3 (eval1 (val, e, k)))
-- eval1 ((VarCall key), e, k)    = ((VarCall key) , e, k)
eval1 ((VarCall key), e, k)    = eval1 ((e M.! (key)) , e, k)
-- | M.member key e == False = error ("Undeclared Variable in program: " ++ (show key))
--                                 | otherwise = -- If conditions
eval1 ((If cond t f), e, k) | fst3 (eval1 (cond, e, []) )  == (Bool True)  = eval1 (t,e,k) 
                            | fst3 (eval1 (cond, e, []) )  == (Bool False) = eval1 (f,e,k)
-- making evaluated cases work
eval1 ((Bool b), e, (IfHole t f):ts)    | b == True = (t, e, ts)
                                        | b == False = (f, e, ts)
-- Comparator Operators
-- Known issue: doing a subtraction can cause the answer to come out wrong because it'll do 3-1 as 1-3 
-- looking for a solution for this 
eval1 ((CompBinOp op (Int x) (Int y)), e, k)  = eval1 ((Bool (applyCompBinOp op x y)), e, k)
eval1 ((CompBinOp op (Bool x) y), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((CompBinOp op x (Bool y)), e, k) = error ("condition in comparator must evaluate to int")

eval1 ((CompBinOp op (Int x) y) , e, k) = eval1 (y, e, (CompBinHole op (Int x)) : k )
-- Sometimes we need to flip the operator sign because the order of stuff is changed
eval1 ((CompBinOp op x (Int y)) , e, k) = eval1 (x, e, (CompBinHole (reflectOp op) (Int y)) : k )
eval1 ((CompBinOp op x y), e, k) = eval1 (x, e, (CompBinHole (reflectOp op) y) : k )

-- Mathematical Operators
eval1 ((IntBinOp op (Int x) (Int y)), e, k) = eval1 ((Int (applyIntBinOp op x y)), e, k) 
eval1 ((IntBinOp op (Bool x) y), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((IntBinOp op x (Bool y)), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((IntBinOp op (Int x) y) , e, k) = eval1 (y, e, (IntBinOpHole op (Int x) 'R') : k )
eval1 ((IntBinOp op x (Int y)) , e, k) = eval1 (x, e, (IntBinOpHole op (Int y) 'L') : k )
eval1 ((IntBinOp op x y) , e, k) = eval1 (x, e, (IntBinOpHole op y 'R') : k )

-- Binary Operators
eval1 ((BinOp op (Bool x) (Bool y)), e, k) = eval1 (Bool (applyBinOp op x y), e, k)
eval1 ((BinOp op x y), e, k ) = eval1 (BinOp op (fst3 (eval1 (x, e, []))) (fst3 (eval1 (y, e, []))), e, k)


-- List Operators
eval1 (ListUnaOp op l x, e, k) = eval1 (Int (applyListUnaOp op (getList $ fst3 $ eval1 (l, e, [])) x), e, k)
eval1 (ListBinOp op (ListStr s) (Int x), e, k) = eval1 (ListStr (applyListOp op s x), e, k )
eval1 (ListBinOp op l x, e, k) = eval1 (ListBinOp op l' x', e, k)
                                where 
                                    l' = fst3 $ eval1 (l, e, [])
                                    x' = fst3 $ eval1 (x, e, [])
eval1 (ListBinBinOp op l n x, e, k) = eval1 (ListStr (applyListBinOp op (getList $ fst3 $ eval1 (l, e, [])) n (getInt $ fst3 $ eval1 (x, e, []) ) ), e, k)
eval1 (ListAcc (ListStr l) ((Int x)), e, k ) = eval1 (Int (applyListUnaOp "ACC" l x), e, k)
eval1 (ListAcc expr ((Int x)), e, k ) = eval1 (expr, e, (ListAccHole (Int x) 'L'):k )
eval1 (ListAcc (ListStr l) expr, e, k ) = eval1 (expr, e, (ListAccHole (ListStr l) 'R'):k )
eval1 (ListAcc exprL exprI, e, k ) = eval1 (exprL, e, (ListAccHole exprI 'L'):k )
-- While loops
eval1 ((WhileLoop cond exprs ), e, k)   | fst3 (eval1 (cond, e, []) )  == (Bool True)  = (eval1 (exprs, e, (WhileHole cond exprs):k))
                                        | fst3 (eval1 (cond, e, []) )  == (Bool False) = (eval1 (Bool False, e, k))
-- = eval1 (Loop, e, (WhileHole cond exprs exprs e):k)
eval1 ((PrintF expr), e, k) = (fst3 $ eval1 (expr, e, []), e, (PRINTING):k)
eval1 ((LoadS), e, k) = ((Int 0), e, (LOADING):k)
-- Continuing evalutation
eval1 (ContEval exp1 exp2, e, k) = eval1 (exp1, e, (ContEvalHole exp2):k)
-- eval1 a = a


-- use for all messy/monadic functions
startEval :: (Expr,E,K) -> IO ()
startEval s = do
                let (expr, e, k) = (eval1 s)
                if (k) == [] 
                    then do 
                        return()
                    else do 
                        if ((head k) == (PRINTING))
                            then do
                                putStrLn $ (pretty expr) 
                                (startEval (expr, e, (tail k)))
                            else do
                                if ((head k) == (LOADING))
                                    then do
                                        streams <- setUpStreams
                                        (startEval (expr, (addToE e streams 1) , (tail k)))
                                    else do
                                        (startEval (expr, e, k))


-- ==========================================================================================
-- https://stackoverflow.com/questions/25493757/pattern-matching-mixed-with-guards/25493823 -
-- ==========================================================================================

pretty :: Expr -> String
pretty (Int x)      = show x
pretty (Bool b)     = show b
pretty (ListStr l)     = show l
pretty a = show a

moreEvals ((Bool b), e, k) = False
moreEvals ((Int x), e, k) = False
moreEvals _ = True

getList (ListStr x) = x
getList _ = error "not a list"

getInt (Int x) = x
getInt _ = error "not a list"

reflectOp "<" = ">"
reflectOp ">" = "<"
reflectOp "=" = "="

mLoop 0 s@(c,e,k) sprev@(c',e',k') env  = mLoop 1 (eval1 (c,env,k)) s env
mLoop n s@(c,e,k) sprev@(c',e',k') env  |  (fst3 sprev) == (fst3 s) = (c,e,k)
                                        | otherwise = mLoop (n+1) (eval1 s) s env

et s = parseLambda $ alexScanTokens s

etStr expr = (expr, M.empty, [])
etInj expr env = (expr, env, [])

evalStream :: [Expr] -> E -> [Expr]
evalStream (expr : []) env  = [fst3 (mLoop 0 (expr, env, []) (expr, env, []) env)]
evalStream (expr:exprs) env = [fst3 (evaluated)] ++ evalStream exprs (snd3 evaluated)
                            where evaluated = mLoop 0 (expr, env, []) (expr, env, []) env
-- need to make a version of evalstream for repeating, once we do that we can start doing scoping 
-- and then get while loops working

initLoop :: [Expr] -> [(Expr, E, K)]
initLoop (expr : []) = [(expr, M.empty, [])]
initLoop (expr : exprs) = [(expr, M.empty, [])] ++ initLoop exprs

evalLoop :: [(Expr, E, K)] -> E -> [(Expr, E, K)]
evalLoop ((expr, e, k) : []) env    =  [(mLoop 0 (expr, env, []) (expr, env, []) env)]
evalLoop ((expr, e, k) : exprs) env = [(evaluated)] ++ evalLoop exprs (snd3 evaluated)
                                    where evaluated = mLoop 0 (expr, env, []) (expr, env, []) env

fst3 :: (a, b, c) -> a
fst3 (x, _, _) = x

snd3 :: (a, b, c) -> b
snd3 (_, x, _) = x

thd3 :: (a, b, c) -> c
thd3 (_, _, x) = x

insOrUpdMap :: [Char] -> Expr -> Map [Char] Expr -> Map [Char] Expr
insOrUpdMap key val map = M.insert key val $ M.delete key map

applyBinOp "and" x y = x && y
applyBinOp "or" x y = x || y

applyIntBinOp "+" x y = x + y
applyIntBinOp "-" x y = x - y
applyIntBinOp "%" x y = mod x y
applyIntBinOp "*" x y = x * y
-- applyIntBinOp "==" x y = x == y

-- applyCompBinOp :: String -> Int -> Int -> Bool
applyCompBinOp "<" x y = x < y
applyCompBinOp ">" x y = x > y
applyCompBinOp "=" x y = x == y
applyCompBinOp "!" x y = x /= y

applyListUnaOp "LEN" l 0 = length l
applyListUnaOp "ACC" l x = l !! x

applyListOp "APP" l x = l ++ [x]

applyListBinOp "MOD" l n x = replaceNth n x l

replaceNth :: Int -> a -> [a] -> [a]
replaceNth _ _ [] = []
replaceNth n newVal (x:xs)  | n == 0 = newVal:xs
                            | n > (length xs) = error "list index out of bounds"
                            | otherwise = x:replaceNth (n-1) newVal xs


evalBoolExpr (Bool True) = True
evalBoolExpr (Bool False) = False

iConv = (Prelude.map (\x -> read x::Int))


setUpStreams = do
    input <- getContents
    let split_inp = transpose $ Prelude.map iConv (Prelude.map (splitBy ' ') (splitBy '\n' input))
    -- let split_inp = transpose (Prelude.map (splitBy ' ') (splitBy '\n' input))
    return split_inp

splitBy delimiter = Prelude.foldr f [[]] 
            where f c l@(x:xs)  | c == delimiter = []:l
                                | otherwise = (c:x):xs



addToE :: E -> [[Int]] -> Int -> E
addToE e (l:[]) n = insOrUpdMap ("a" ++ (show n)) (ListStr l) e
addToE e (l:ls) n = addToE (insOrUpdMap ("a" ++ (show n)) (ListStr l) e) ls (n+1)


transpose:: [[a]]->[[a]]
transpose ([]:_) = []
transpose x = (Prelude.map head x) : transpose (Prelude.map tail x)



interpret s = startEval (et s, M.empty, [])

mainT = do 
        s <- setUpStreams
        putStrLn $ show s

main = do 
    args <- getArgs
    file <- openFile (head args) ReadMode
    text <- hGetContents file
    interpret text
