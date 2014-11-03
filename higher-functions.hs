{-
THIS FILE HAS EXAMPLES ON "HIGHER ORDER FUNCTIONS" IN HASKELL
-}

multiplyBy :: Int -> Int -> Int
multiplyBy a b = a * b

{-
Function currying example. 
-}

mulBy2 = multiplyBy 2
mulBy3 = multiplyBy 3

{-
Example on passing functions as arguments
-}
applyTwice :: (a -> a) -> a -> a  
applyTwice f x = f (f x) 

{-
Filter a list with only even numbers. that is if the value in 
-}

isEven :: Int -> Bool
isEven a =
	if(a `mod` 2 == 0)
		then True
		else False 


filterEven :: (Int -> Bool) -> [Int] -> [Int]
filterEven f xs
		| otherwise = [a | a <- xs, f a]


{-Simplifying the above example-}
filterEven' :: [Int] -> [Int]
filterEven' a = [z | z <- a, isEven z]

