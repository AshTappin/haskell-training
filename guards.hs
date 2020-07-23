bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height 
	| bmi <= skinny = "Underweight" 
	| bmi <= normal = "Normal" 
	| bmi <= fat = "Fat" 
	| otherwise = "Obese"
	where bmi    = weight / height ^ 2  
	      skinny = 18.5 
	      normal = 25.0 
	      fat = 30.0

meCompare :: (Ord a) => a -> a -> Ordering
a `meCompare` b
	| a > b = GT
	| a == b = EQ
	| otherwise = LT

initials :: String -> String -> String
initials (f:_) (l:_) =  [f] ++ "." ++ [l]

getUnderweightBmis :: (RealFloat a) => [(a,a)] -> [a]
getUnderweightBmis bmis = [bmi w h | (w, h) <- bmis, bmi w h <= 18.5]
	where bmi weight height = weight / height ^ 2