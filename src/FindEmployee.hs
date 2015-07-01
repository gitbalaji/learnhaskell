data Employee = Employee String Float Int

list_of_employees = [Employee "Balaji" 104000.00 37, Employee "Somebody" 100000.00 36]

name :: Employee -> String  

name (Employee name _ _ ) = name

salary(Employee _ salary _ ) = salary

main = do
  print $ maximum(map salary list_of_employees)