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