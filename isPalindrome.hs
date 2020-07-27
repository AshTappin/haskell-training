main = interact isPalindrome

isPalindrome :: String -> String
isPalindrome = unlines . map (\xs -> if isPal xs then "Yes" else "No") . lines
					where isPal xs = xs == reverse xs 