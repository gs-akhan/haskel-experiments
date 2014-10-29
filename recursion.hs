{-
	Recursion examples.
-}

maximum' :: [Int] -> Int
maximum' [] = error "List is empty"
maximum' [x] = x
maximum' (x:xs)
	| x > maxTail = x
	| otherwise = maxTail
	where maxTail = maximum' xs


{-
Replicate function that replicates the number into a list number of times
example replicate' 5 3 => [5,5,5]
-}

replicate' :: Int -> Int -> [Int]
replicate' num times 
	| times <= 0 = []
	| otherwise = num : replicate' num (times -1)

{-
Take function , 

returns that many values from the list, 
-}

take' :: (Integral a) => [a] -> a -> [a]
take' [] a = []
take' (x:xs) times
	| times == 0 = []
	| otherwise = x : take' xs (times - 1)

{-
	Reverse the array
-}

reverse' :: (Integral a) => [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x] 