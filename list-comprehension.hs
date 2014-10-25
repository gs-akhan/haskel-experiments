-- To Display numbers from 1 to 100. this is a Range declaration

numbers1to100 = [1..100]

-- To Display All the even numbers in short from

evenNumbers = [0,2..100]

-- Replacing even with "EVEN" and odd with "ODD"

evenText = [ if (even x) then "Even" else "Odd" | x <- [0..10]]

-- Even numbers using the predicates

evenPredicate = [x | x <- [0..10], x `mod` 2 == 0]

-- Multiple predicates. Prints only first 10 even numbers

evenNumbers' = [x | x <- [0..20], x `mod` 2 == 0, x <= 10]


-- remove All upper case

removeUpperCases str = [a | a <- str, a `elem` ['a'..'z'] || a == ' ']

-- List of Tupeles containing numbers from the 

listTuple = [(a, b) | a <- [0..10], b <- [1..10]]

-- List concatination using ++ operator  and also declaring the type of the concattedList as String arrays
concattedList :: [String]
concattedList = ["A", "Z", "H", "A", "R"] ++ ["K", "H" , "A" , "N"]

-- Getting the index of the String using the !! operator also called as "Indexing Operator"

myString :: String
myString = "Azhar uddin khan"

getIndexValueFromString :: Int -> Char
getIndexValueFromString ind = myString !! ind



