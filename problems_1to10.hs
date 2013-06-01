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

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

compress :: (Eq a) => [a] -> [a]
compress [x] = [x]
compress (x:xs) =
    if (head xs) == x then
        compress xs
    else
        x : (compress xs)

-- *Main> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
pack :: (Eq a) => [a] -> [a]
pack x = pack' x 0 []
    where
        pack' :: (Eq a) => [a] -> Int -> [a] -> [a]
        pack' [x] count acc = (take count (repeat x)) ++ acc
        pack' (x:xs) count acc =
            if (head xs) == x then
                pack' xs (count + 1) acc
            else
                pack' xs 0 ((take count (repeat x)) ++ acc)

main = 
    do
        print "Hello"
        print ("Is 'madam' a palindrome? " ++ show (isPalindrome "madam"))
        print ("Is 'wombat' a palindrome? " ++ show (isPalindrome "wombat"))
        print (compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"])
        print (pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])