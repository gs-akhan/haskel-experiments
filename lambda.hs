{-This file has all the examples on LAMBDAS-}
{-- Example on takeWhile function
	It takes a predicate and a list, runs that predicate on every element of list untill it returns false, and exits after that
--}
returnFirstWord :: [Char] -> [Char]
returnFirstWord x = takeWhile ( /= ' ' ) x

{-return all the values whos squre is less than 2000-}
{-Haskell's lazy evaluation kicks in really well. You just have to define a infinite list-}

returnPow2Less2000 :: (Integral a) => [a]
returnPow2Less2000 = takeWhile ( <= 20000)  (map ( ^2 ) [1..])

chain 1 = [1]
chain n 
	| even n = n : chain (n `div` 2)
	| odd  n = n : chain (n * 3 + 1) 

{-Creating a list of functions using map method -}
{-This holds all the functions curried with 1,2,3,4,5.. 20 as first argument to the multiply method-}
{-You can invaoke it as (listOfFunctions !! 4) 12 gives 60 -}

listOfFunctions = map ( * ) [1..20]

{-Basic Lambda, it is defined as (/a  -> true -}

testingFilter :: [Int] -> [Int]
testingFilter ls = filter (\item -> if item `mod` 2 == 0 then True else False) ls

testingZipWith a b = zipWith (\ (item1, item2) -> item1 + item2) a b

testingMap = map (\ a -> a * 2) [1..20]
{-Left fold example foldl -}

sumupEverything = foldl (\ acc x -> acc + x) 0 [1..20]

{-Right Fold example. this takes the accumulator at the end-}

sumupEverything' = foldr (\x acc -> x : acc) [] [1..20]  