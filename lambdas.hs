-- numLongChains :: Int
-- numLongChains = length (filter isLong (map chain [1..100]))
-- 	where isLong xs = length xs > 15

-- numLongChains :: Int
-- numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))``

-- Folds

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys