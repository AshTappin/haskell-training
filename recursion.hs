maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
   | x > maxTail = x
   | otherwise = maxTail
   where maxTail = maximum' xs

zip' :: [a] -> [b] -> [(a, b)] 
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y):zip' xs ys

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = smallerSorted ++ [x] ++ largerSorted
			where smallerSorted = quicksort [a | a <- xs, a <= x]
			      largerSorted = quicksort [a | a <- xs, a > x]

factorial :: Integer -> Integer
factorial 0 = 1
factorial x = x * factorial (x-1)

