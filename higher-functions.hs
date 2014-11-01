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


