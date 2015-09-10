import Data.List

main = do
print(intercalate "," ["Achu","Avy","Radha"])
print(intersperse "," ["Achu","Avy","Radha"])
print(take 3 [1,2,3,4,5,6])
print(drop 3 [1,2,3,4,5,6])
print $ transpose ["abc","efg"]
print $ permutations "abc"
print $ foldl' (+) 0 [10,20,30,40]
print $ concat ["abc","efg"]
print $ any (== 'a') "abcd"
print $ all (== 'a') "abcd"
print $ take 10 $ iterate (+1) 1
print $ replicate 10 'x'
print $ splitAt 3 "abcdefgh"
print $ takeWhile (< 3) [1..]
print $ span (< 3) [1..10]
print $ break (> 3) [1..10]
print $ elem 'c' "abcdefg"
print $ find (> 2) [1..]
print [True, False ..]