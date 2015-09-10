import Data.List

main = do
 print $ foldr (+) 2 [2,3,4,5,6]
 print $ product [1,2,3,4]