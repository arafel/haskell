module Unzip where

myunzip :: [(a,b)] -> ([a], [b])
myunzip x = myunzip' [] [] x
    where
        myunzip' :: [a] -> [b] -> [(a,b)] -> ([a], [b])
        myunzip' a b [] = (a, b)
        myunzip' a b (x:xs) = myunzip' (a ++ [fst x]) (b ++ [snd x]) xs

myzip :: [a] -> [b] -> [(a, b)]
myzip [] [] = []
myzip (x:xs) (y:ys) = [(x,y)] ++ (myzip xs ys)

main :: IO()
main = do 
        let thelist = [(1,2),(3,4)]
        let (a, b) = myunzip thelist
        putStrLn ("Starting list: " ++ (show thelist))
        putStrLn ("Split into " ++ (show a) ++ " and " ++ (show b))
        let c = (myzip a b)
        putStrLn ("Rejoined into " ++ (show c))
        putStrLn ("Testing - is rejoined list same as original? " ++ show (thelist == c))
