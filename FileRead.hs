import System.IO

main = do 
	withFile "dreamies.txt" ReadMode (\handle -> do
		contents <- hGetContents handle
		putStr contents)

withFile' :: String -> IOMode -> (Handle -> IO a) -> IO a
withFile' path mode action = do
	handle <- openFile path mode
	result <- action handle
	nothing <- hClose handle
	return result