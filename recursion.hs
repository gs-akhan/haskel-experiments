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
	| otherwise = num : replicate' num (times -1 )

