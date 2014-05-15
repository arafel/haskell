module Main where

isPrime :: Integer -> Bool
isPrime n = isPrime' (n)
    where
        isPrime' :: Integer -> Bool
        isPrime' x = True

main = 
    do
        print ("Is 1 prime? " ++ show (isPrime 1))
        print ("Is 2 prime? " ++ show (isPrime 2))
        print ("Is 3 prime? " ++ show (isPrime 3))
        print ("Is 4 prime? " ++ show (isPrime 4))
