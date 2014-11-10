{-This file explains modules system in haskell
	Typically I would be importing different modules using the import <module name> 
	and test those methods
	to load the module in the GHCI use the command 
	>> :m + Data.List 
	
	to load multiple modules into GHCI just space them 
	>> :m + Data.List Data.Set
	
	if you want to partially load some methods in GHCI
	>> :m + Data.List(nub, sort)
-}
import Data.List

{-Returns the unique values inthe List-}

uniq xs = nub xs

