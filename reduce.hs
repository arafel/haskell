myreduce f [] a = a
myreduce f (x:xs) a = (f x (myreduce f xs a))

reduce f a [] = a
reduce f a (x:xs) = f x (reduce f a xs)

main = do
    let sum = reduce (+) 0
    let product = reduce (*)
    let a = sum [1,2,3,4]
    print a
    let a = product [1,2,3,4]
    print a
