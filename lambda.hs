{-This file has all the examples on LAMBDAS-}
{-- Example on takeWhile function
	It takes a predicate and a list, runs that predicate on every element of list untill it returns false, and exits after that
--}
returnFirstWord :: [Char] -> [Char]
returnFirstWord x = takeWhile ( /= ' ' ) x
