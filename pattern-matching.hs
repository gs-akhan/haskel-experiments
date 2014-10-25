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

