module Unzip where

myunzip :: [(x,y)] -> ([x], [y])
myunzip x = myunzip' [] [] x
    where
        myunzip' :: [a] -> [b] -> [(a,b)] -> ([a], [b])
        myunzip' a b [] = (a, b)
        myunzip' a b (x:xs) = myunzip' (a ++ [fst x]) (b ++ [snd x]) xs

main :: IO()
main = do 
        let thelist = [(1,2),(3,4)]
        -- let a, b = myunzip thelist
        print (myunzip thelist)
