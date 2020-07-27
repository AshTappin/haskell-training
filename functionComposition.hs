-- map (\x -> negate (abs x)) [5, -3, -6, 7,-3,2, -19]

-- map (\x -> sum (tail x)) [[1..5],[3..6],[1..7]]
-- [14,15,27]
 
-- map (sum . tail) [[1..5],[3..6],[1..7]]

oddSquareSum :: Integer
oddSquareSum = sum . takeWhile (<10000) . filter odd . map (^2) $ [1..]
