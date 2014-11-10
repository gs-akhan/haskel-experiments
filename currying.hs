{-This file has a lot of currying examples-}
addTwo   = ( +2 )

addThree = ( +3 )

mulTwo   = ( *2 )

divThree = ( /3 )

multiplyTheListBy2 = map (*2) [1..20]

divideListBy2 = map (/2) [1..20]

curriedFunctions xs = map (\x y  -> x * y) xs

currFooAtIdx idx = curriedFunctions [1..20] !! idx

curriedFunctionsUsingFoldl xs = foldl (\acc curr -> acc ++ [\a -> curr * a]) [] xs




