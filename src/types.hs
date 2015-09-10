type Name = String
type Address = [String]

data Employee = Employee Name Address deriving Show

getEmployeeName(Employee name _) = name

main = do
let  p = Employee "Balaji"  ["24365 E PLATTE PL AURORA CO"]
print p


