cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
	let sideArea = 2 * pi * r * h; topArea  = pi * r^2
	in sideArea + 2 * topArea

getFats :: (RealFloat a) => [(a, a)] -> [a]
getFats bmis = [bmi | (w, h) <- bmis, let bmi = w /h ^2, bmi >= 25.0 ]