-- Exercises/examples/inspired by "Learn you a Haskell for Great Good" (or
-- whatever it is)

module Main where

import Text.Printf (printf)

doubleMe x = x * 2
doubleUs x y = doubleMe x + doubleMe y

-- can be slow, it has to walk the entire first list every time...
concatList a b = a ++ b
-- a is an element
insertHead a b = a : b
-- b must be a list
appendTail a b = a ++ b
-- lists are zero indexed
getListElement l i = l !! i

-- nice definition of factorial
factorial :: Integer -> Integer
factorial n = product [1..n]

fib :: Integer -> Integer
fib n = if n  < 3 then 1
		else (fib (n - 2)) + (fib (n - 1))

-- Not the most effecient way; can't work out how to build it as I go, yet.
bad_fiblist :: Integer -> [Integer]
bad_fiblist n = [ fib x | x <- [1..n]]

fiblist :: Integer -> [Integer]
fiblist n = 
    fiblist' 1 n 0 1 
    where
        fiblist' :: Integer -> Integer -> Integer -> Integer -> [Integer]
        fiblist' i max val1 val2
            | i > max = []
            | otherwise = ([val1 + val2]) ++ fiblist' (i + 1) n val2 (val1 + val2)


fact :: Integer -> Integer
fact n = 
	case n of
		1 -> 1
		_ -> n * fact (n - 1)

len :: [a] -> Integer
len [] = 0
len (x:xs) = 1 + len xs

rev :: [a] -> [a]
rev (x:xs) = concatList (rev xs) ([x])
rev x = x

-- Copied straight from webpage
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "maximum of empty list"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs

-- Rewritten by me
likeHaskell :: IO()
likeHaskell = 
	do 
		putStrLn "Do you like Haskell? [yes/no]"
		answer <- getLine
		case answer of 
			"yes" -> putStrLn "yay!"
			"no" -> putStrLn "aw"
			_ -> putStrLn "sorry, I don't understand."

main :: IO()
main = 
	do 
		-- interactive gets boring if you do it each time
		-- likeHaskell
		putStrLn (rev "Hello world")
		let a = [1, 2, 3]
		-- putStrLn (len a) -- type mismatch, can't do that
		printf "Factorial 5 is %i\n" (fact 5)
		printf "%i\n" (len a)
		print (fiblist 10)
