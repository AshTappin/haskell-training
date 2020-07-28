import System.Environment
import System.IO
import System.IO.Error

main =  toTry `catch` handler

toTry :: IO ()
toTry = do 
	(fileName:_) <- getArgs 
	contents <- readFile fileName 
	putStrLn $ "nice file!"

handler :: IOError -> IO ()
handler e
	| isDoesNotExistError e = putStrLn "File does not exist"
	| otherwise = ioError e