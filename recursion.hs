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

grepNew :: [Int] -> Int -> Int -> [Int]
grepNew [] a b = []
grepNew [a] _ 0 = []
grepNew xs str end
	| str > length xs - 1 = [] 
	| str > end = []
	| otherwise = (xs !! str) : (grepNew xs (str + 1) end)


{-Filters the largest even in the list-}

filterLargestEven :: [Int] -> Int
filterLargestEven [a] = a
filterLargestEven (x:xs)
	| ( even x ) &&  ( x > filterLargestEven xs) = x
	| otherwise = filterLargestEven xs



getHighestPower fn [a] = a
getHighestPower fn (x:xs)
	| (fn x) > fn (getHighestPower fn xs) = x
	| otherwise = getHighestPower fn xs

