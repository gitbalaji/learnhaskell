class Str a where
 add :: a -> a -> a

instance Str Int where
add a b = a + b

main = do
 
	