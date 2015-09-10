import Data.List

-- qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = (qsort lth) ++ [x] ++ (qsort gth) where
 lth = filter (< x) xs
 gth = filter (>= x) xs

printList (x:xs) = do
 let lth = filter (< x) xs
 let gth = filter (>= x) xs	
 print lth
 print x
 print gth

doubleIt list = map(\x -> do
 x * 2) list

main = do
print  $ qsort [1,20,3,2,45,2]
printList [0]
print $ filter(< 5) [2,4,5,10]
print $ qsort (doubleIt [5, 2, 3, 1, 4])

