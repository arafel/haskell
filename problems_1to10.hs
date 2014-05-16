module Main where

-- Problem 1
myLast :: [Integer] -> Integer
myLast [x] = x
myLast (x:xs) = myLast xs

myLast' :: [Integer] -> Integer
myLast' x = head (reverse x)

-- Problem 2
myButLast :: [Integer] -> Integer
myButLast (x:xs) = 
    if ((length xs) == 1) then 
        x
    else 
        myButLast xs

-- More elegant, taken from webpage solutions
myButLast' x = reverse x !! 1

-- Problem 3
elementAt :: Integer -> [a] -> a
elementAt n l = element' 1 n l
    where
        element' :: Integer -> Integer -> [a] -> a
        element' i m (x:xs) = 
            if (i == m) then
                x
            else
                element' (i + 1) m xs

-- Problem 4
myLength :: [a] -> Integer
myLength [] = 0
myLength (x:xs) = 1 + (myLength xs)

-- Problem 5
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

-- Problem 6
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = xs == (reverse xs)

-- Problem 7 - Flatten a nested list structure.
data NestedList a = Elem a | List [NestedList a]

-- Problem 8 - Eliminate consecutive duplicates of list elements.
compress :: (Eq a) => [a] -> [a]
compress [x] = [x]
compress (x:xs) =
    if (head xs) == x then
        compress xs
    else
        x : (compress xs)

-- Problem 9
-- Pack consecutive duplicates of list elements into sublists. If a list contains repeated 
-- elements they should be placed in separate sublists.
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

-- Problem 10
-- RLE - use problem 9 to implement RLE
-- encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]

main = 
    do
        print "Hello"
        print ("Is 'madam' a palindrome? " ++ show (isPalindrome "madam"))
        print ("Is 'wombat' a palindrome? " ++ show (isPalindrome "wombat"))
        print (compress ["a","a","a","a","b","c","c","a","a","d","e","e","e","e"])
        print (pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'])
