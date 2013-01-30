module Unzip where

-- myunzip :: [(x,y)] -> [x] -> [y]
myunzip x = myunzip' [] [] x
    where
        myunzip' a b [] = a b
        myunzip' a b (x:xs) = myunzip' (a ++ [fst x]) (b ++ [snd x]) xs

main :: IO()
main = 
	do 
		print "Hello world"
        -- let a = [ (1, 2), (3, 4) ]
        -- let b, c = (myunzip a)
        -- print b, c
