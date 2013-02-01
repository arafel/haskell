module Main where

myLast :: [Integer] -> Integer
myLast [x] = x
myLast (x:xs) = myLast xs

myButLast :: [Integer] -> Integer
myButLast (x:xs) = 
    if ((length xs) == 1) then 
        x
    else 
        myButLast xs

-- More elegant, taken from webpage solutions
myButLast' x = reverse x !! 1

elementAt :: Integer -> [a] -> a
elementAt n l = element' 1 n l
    where
        element' :: Integer -> Integer -> [a] -> a
        element' i m (x:xs) = 
            if (i == m) then
                x
            else
                element' (i + 1) m xs

myLength :: [a] -> Integer
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]
