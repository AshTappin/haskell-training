data Tree a = Tip a | Branch (Tree a) (Tree a) deriving (Show)

instance Functor Tree where
	fmap func (Tip a) = Tip (func a)
	fmap func (Branch left right) = Branch (fmap func left) (fmap func right)