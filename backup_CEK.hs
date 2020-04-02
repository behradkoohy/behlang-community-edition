import Grammar
import Tokens
import Data.Map.Strict as M
import Data.Maybe



data Frame  = HoleApp Expr E 
            | AppHole Expr 
            | IfHole Expr Expr 
            | IntBinOpHole String Expr 
            | CompBinHole String Expr
            | WhileHole Expr [Expr] [Expr] E
            | EndLoopEnv E
            deriving (Show)



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
-- Primitive type exp
eval1 ((Bool b), e, ((IntBinOpHole op ex):ks))      = ((Bool b), e, ks) -- This shouldnt happen??
eval1 ((Int x), e, ((IntBinOpHole op ex):ks))       = ((IntBinOp op ex (Int x)), e, ks)
eval1 (Halt, e, k)                                  = ((Halt), e, k)

eval1 ((Bool b), e, ((CompBinHole op ex):ks))       = ((Bool b), e, ks) -- This shouldnt happen??
eval1 ((Int x), e, ((CompBinHole op ex):ks))        = ((CompBinOp op ex (Int x)), e, ks) -- This shouldnt happen??
-- Variables
eval1 ((VarDec key val), e, k) = (Halt, insOrUpdMap key val e, k)
eval1 ((VarCall key), e, k)     | M.member key e == False = error ("Undeclared Variable in program: " ++ (show key))
                                | otherwise = eval1 (fromJust (M.lookup key e), e, k)

-- Pure Variable Definition
eval1 ((PVarDec key (VarCall x)), e, k)  = eval1 ( (PVarDec key (fromJust (M.lookup x e))), e, k ) 
eval1 ((PVarDec key val), e, k)  = (Halt, insOrUpdMap key val e, k)

-- If conditionså
eval1 ((If cond t f), e, k) | ((fst3 $ mLoop 0 (cond, e, []) (cond, e, []) e)  == (Bool True) ) = (t,e,k) 
                            | ((fst3 $ mLoop 0 (cond, e, []) (cond, e, []) e)  == (Bool False)) = (f,e,k)
eval1 ((If (Bool True) t f), e, k) = (t,e,k)
eval1 ((If (Bool False) t f), e, k) = (f,e,k)
eval1 ((If cond t f), e, k) = error ("condition in if must evaluate to a boolean:\t" ++ (show (((fst3 $ mLoop 0 (cond, e, (IfHole t f):k) (cond, e, (IfHole t f):k) e))))) 

                            -- | ((fst3 $ eval1 (cond, e, (IfHole t f):k))  == (Bool True) ) = (t,e,k) 
                            -- | ((fst3 $ eval1 (cond, e, (IfHole t f):k))  == (Bool False)) = (f,e,k)
                            -- | otherwise = 
-- making evaluated cases work
eval1 ((Bool b), e, (IfHole t f):ts)    | b == True = (t, e, ts)
                                        | b == False = (f, e, ts)
-- Comparator Operators
-- Known issue: doing a subtraction can cause the answer to come out wrong because it'll do 3-1 as 1-3 
-- looking for a solution for this 
eval1 ((CompBinOp op (Int x) (Int y)), e, k)  = ((Bool (applyCompBinOp op x y)), e, k)
eval1 ((CompBinOp op (Bool x) y), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((CompBinOp op x (Bool y)), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((CompBinOp op (Int x) y) , e, k) = eval1 (y, e, (CompBinHole op (Int x)) : k )
-- Sometimes we need to flip the operator sign because the order of stuff is changed
eval1 ((CompBinOp op x (Int y)) , e, k) = eval1 (x, e, (CompBinHole (reflectOp op) (Int y)) : k )
eval1 ((CompBinOp op x y), e, k) = eval1 (x, e, (CompBinHole (reflectOp op) y) : k )

-- Mathematical Operators
-- minus (-) gets flipped somewhere and it cant
-- we need to figure out how to avoid this
eval1 ((IntBinOp op (Int x) (Int y)), e, k) = ((Int (applyIntBinOp op x y)), e, k) 
eval1 ((IntBinOp op (Bool x) y), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((IntBinOp op x (Bool y)), e, k) = error ("condition in comparator must evaluate to int")
eval1 ((IntBinOp op (Int x) y) , e, k) = eval1 (y, e, (IntBinOpHole op (Int x)) : k )
eval1 ((IntBinOp op x (Int y)) , e, k) = eval1 (x, e, (IntBinOpHole op (Int y)) : k )
eval1 ((IntBinOp op x y) , e, k) = eval1 (x, e, (IntBinOpHole op y) : k )

-- While Loops
-- check the shit for the environments because it might get fucked
eval1 ((WhileLoop ( cond ) exprs ), e, k) = eval1 (Loop, e, (WhileHole cond exprs exprs e):k)
eval1 (Loop, e, (WhileHole cond [] expComplete env):k)          | loopedCond == (Bool True ) = eval1 (Loop, env, (WhileHole cond expComplete expComplete env):k)
                                                                | loopedCond == (Bool False) = (Loop, env, (EndLoopEnv env):k)
                                                                where loopedCond = ((fst3 $ mLoop 0 (cond, env, []) (cond, env, []) env))
eval1 (Loop, e, (WhileHole cond expStack expComplete env):k)    = eval1 (head expStack, env, (WhileHole cond (tail expStack) expComplete env):k)
eval1 (_, _, (EndLoopEnv _ ):_) = (Halt, M.empty, [])

-- eval1 ((WhileLoop ( cond ) exprs ), e, k)   | ((fst3 $ mLoop 0 (cond, e, []) (cond, e, []) e)  == (Bool False)) = (Halt, M.intersection e (snd3 $ last (evalLoop (initLoop exprs) e)), k)
--                                             | ((fst3 $ mLoop 0 (cond, e, []) (cond, e, []) e)  == (Bool True) ) = do
--                                                                                                                     loopOutput <- evalLoop (initLoop exprs) e
--                                                                                                                     lastLoopRun <- last loopOutput
--                                                                                                                     return $ eval1 ((WhileLoop ( cond ) exprs ), e, k)


--                                                 -- eval1 ((WhileLoop ( cond ) exprs ), (snd3 $ last looped), k)
--                                             | otherwise = error ("error in loop condition" ++ (show cond))
-- ==========================================================================================
-- https://stackoverflow.com/questions/25493757/pattern-matching-mixed-with-guards/25493823 -
-- ==========================================================================================

moreEvals ((Bool b), e, k) = False
moreEvals ((Int x), e, k) = False
moreEvals _ = True



reflectOp "<" = ">"
reflectOp ">" = "<"
reflectOp "==" = "=="

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


applyIntBinOp "+" x y = x + y
applyIntBinOp "-" x y = x - y

applyCompBinOp "<" x y = x < y
applyCompBinOp ">" x y = x > y


evalBoolExpr (Bool True) = True
evalBoolExpr (Bool False) = False



