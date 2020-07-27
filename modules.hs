import Data.List hiding (filter)
import qualified Data.Map as M

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub

intersperseWithDots :: [Char] -> [Char]
intersperseWithDots xs = intersperse '.' xs

-- Available functions
--concat
--concatMap
--transpose
--dropWhile
--find
--all
getStockGreaterThanThousand stocks = head $ dropWhile (\(val, y, m, d) -> val < 1000) stocks 

getDOBsNotWorking [(name, dob),_] = [dob]  
--above only gets head. can't pattern match arrays
split10 numbers = partition (>10) numbers 

findKey :: (Eq k) => k -> [(k, v)] -> v
findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs