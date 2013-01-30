module Unzip where

unzip :: [(x,y)] -> [x] -> [y]
unzip x = unzip' [] [] x
    where
        unzip' :: [a] -> [b] -> [c] -> [a] -> [b]
        unzip' a b [] = a b
        unzip' a b (x:xs) = unzip' (appendTail a [fst x]) (appendTail b [snd x]) xs

main :: IO()
main = 
	do 
        let a = [ (1, 2), (3, 4) ]
        print (unzip a)
