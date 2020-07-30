maybeadd :: Num b => Maybe b -> Maybe b -> Maybe b

maybeadd mx my = 
	mx >>= (\x -> my >>= (\y -> Just $ x + y))

-- >>= :: ma -> (a -> mb) -> mb

-- ma
-- This is a monad, for example, Just 4

-- (a -> mb)
-- This a function that returns a monad like below
half x 
	| even x = Just (x `div` 2)
	| otherwise = Nothing

-- mb
-- This is the value returned in the function

-- so ma -> (a -> mb) -> mb is:
-- Just 6 >>= half = Just 3

-- we can also chain this: Just 20 >>= half >>= half = Just 5

--IO Monads
-- getLine >>= readFile >>= putStrLn