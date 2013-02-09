module Main where

isPrime :: Integer -> Bool
isPrime n = isPrime' (n / 2)
    where
        isPrime' :: Integer -> Bool
        isPrime'
