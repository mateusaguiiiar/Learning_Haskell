howManyEquals :: (Eq a) => a -> a -> a -> Int
howManyEquals a b c
    | a == b && b == c = 3
    | a == b || b == c || a == c = 2
    | otherwise = 0
