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

{-Zip with using a function-}
{-Take a functions and then using that function performs operation on two lists to concat them at the end-}

zipWith' :: (Int -> Int -> Int) -> [Int] -> [Int] -> [Int]
zipWith' _ _ [] = []
zipWith' _ [] _  = []
zipWith' f (x:xs) (y:ys) = f x  y : zipWith' f xs ys 

{-
Filter all the even elements in the List using higer order function
-}

filterEvenFromList :: (Int -> Int) -> [Int] -> [Int]
filterEvenFromList f [] = []
filterEvenFromList f (x:xs) 
	| f x == 0 = x : filterEvenFromList f xs
	| otherwise = filterEvenFromList f xs

{-Filter the List based on the operator function passed. For example you can use this as
filterListByOperator ( > 3) [1,3,4,6] => [4,6]
-}

filterListByOperator :: (Int -> Bool) -> [Int] -> [Int]
filterListByOperator f [] = []
filterListByOperator f (x:xs)
	| f x = x : filterListByOperator f xs
	| otherwise = filterListByOperator f xs

{--}  

largestDivisibleBy2 :: Int
largestDivisibleBy2 
	| otherwise = head (reverse ((filter f [1..1000])))
	where f x = x `mod` 2 == 0 