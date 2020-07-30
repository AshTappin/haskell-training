type Indexed a = (Int, a)

mkToken :: [Indexed Char] -> Indexed [Char]
mkToken [] = error "The input is empty"
mkToken xs@[(i,_),_] = (i, map snd xs)


-- token :: [Indexed Char] -> [Indexed String]
