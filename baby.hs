-- Exercises/examples/inspired by "Learn you a Haskell for Great Good" (or
-- whatever it is)

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

fact n = 
	case n of
		1 -> 1
		_ -> n * fact (n - 1)

main =
	putStrLn "Hello world"