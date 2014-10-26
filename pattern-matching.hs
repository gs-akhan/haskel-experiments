--This File contains all the examples on PATTERN MATCHING (Function Overloading)

sayMe :: (Integral a) => a -> String
sayMe 1 = "One"
sayMe 2 = "Two"
sayMe x = "We Dont know !!"


--Factorial with recurssion 

fact :: (Integral a) => a -> a

fact 0 = 1  
fact a = a * fact(a - 1)


--pattern matching on Tuples

first :: (a, b , c) -> a
first (a, b, c) = a

addAllTuples :: (Integral a) => [(a, a)] -> [a]
addAllTuples xs = [a+b | (a, b) <- xs]

-- Some complex pattern matching added.. using the : pattern

tell :: (Show a) => [a] -> String
tell [] = "This list is empty"
tell (x : []) = "This has one element" ++ show x
tell (x : y : _) = "Too many elements, the first element is " ++ show x


-- Finding the length using recursion

length' :: [x] -> Int
length' [] = 0 
length' (_:x) = 1 + length' x

-- finding the sum  using recursion

sum' :: (Integral a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs


--Examples using the GUARDS 
-- Ring bell if the value is 0 

ringBell :: Int -> String

ringBell a 
	| a == 1 = "You have given One, so we will ring the bell"
	| a == 0 = "You Gave us 0, so we will not ring the bell"
	| otherwise = "You are crazy !! "


-- Using GUARDS along with the where keyword
-- Here I did not understand why RealFloat is used, however Docs say Integral DType allows division
-- http://www.haskell.org/tutorial/numbers.html	

areYouFit :: (RealFloat b) => b -> b -> Bool

areYouFit weight height
	| mass >= 10.0 = True
	| mass <= 10.0 = False
	| otherwise = False
	where mass = weight / height
