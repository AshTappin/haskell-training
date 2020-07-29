data Tree a = Tip a | Branch (Tree a) (Tree a) deriving (Show)

instance Applicative Tree where
	pure = Tip 
	Tip f <*> t = fmap f t
	Branch left right <*> t = Branch (left <*> t) (right <*> t) 