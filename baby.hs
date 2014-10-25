square x = x * x

minusOne x = x - 1

addOne x = x + 1

getMax x y = max x y

getMin x y = min x y

crazy x y = addOne (minusOne (addOne(succ x + (getMax x y))))

isGreaterThan100 x = if x > 100
					then True
					else False

isSmallerThan0 x = if x < 0
					then True
					else False

myName = "My Name is khan and i am cool"

boomx xs = [if x > 10 then "BOOM" else "BANG" | x <- xs, odd x]


length' cs = sum [1 | a <- cs]

getAllEvent :: Int -> [Int]
getAllEvent a = [cs | cs <- [1..10]]

removeAllUpperCase :: [Char] -> [Char]
removeAllUpperCase a = [z | z <- a, z `elem` ['A'..'Z']]

someFunction :: Int -> Int -> Int -> Bool
someFunction a b c = True