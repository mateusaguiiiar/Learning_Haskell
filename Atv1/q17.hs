nthElement :: [Int] -> Int -> Int
nthElement (x:xs) n 
    | n == 1    = x
    | otherwise = nthElement xs (n-1)