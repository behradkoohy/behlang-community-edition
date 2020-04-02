import System.Environment
import Data.List
import System.IO
import Control.Monad
import Control.Exception
import Tokens
import Grammar

main = catch scanToken handler
    where
        handler :: SomeException -> IO ()
        handler ex = putStrLn $ "Caught exception: " ++ show ex


scanToken = (do
        file <- getArgs
        h <- openFile (head file) ReadMode
        contents <- hGetContents h
        let x = parseLambda $ alexScanTokens contents
        print x)

charToString :: Char -> String
charToString c = [c]