import Data.Char (toLower, toUpper)

isOver18 age = do {
if age > 18 then
True
else
False
}
main = do
print(isOver18 25)
let list = ["Balaji","Radha","Achu","Avy"]
print(filter (\x -> length x > 4) list)
print(map (\x -> map toUpper x) list)
