factorial :: Integer -> Integer
factorial n = product[1..n]
conc :: String -> String -> String -> String
conc a b c =  do {
a++b++c
}

main = do
let z = factorial 100
let s = conc "Balaji" "Seshadri" "Engr"
print z
print s
