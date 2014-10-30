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

reverse' :: (Ord a) => [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]


{-
Check if the element exists' in the List
-}

exists' :: (Ord a) => [a] -> a -> Bool
exists' [] num = False
exists' (x:xs) num
	| x == num = True
	| otherwise = exists' xs num

{-
Grep the list using two indexes
example grep' start end ::  grep' [1,2,4,6] 1 1 => [2]
-}

-- TODO Complete this function . 
grepNew :: (Ord a, Integral b) => [a] -> b -> b -> [a]
grepNew [] a b = []
grepNew [a] _ 0 = []
grepNew [a] st en
	