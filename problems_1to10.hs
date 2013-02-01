module Main where

myLast :: [Integer] -> Integer
myLast [x] = x
myLast (x:xs) = myLast xs

myButLast :: [Integer] -> Integer

