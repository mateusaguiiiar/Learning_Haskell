merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) 
    | x < y = x : merge (xs) (y:ys) 
    | x > y = y : merge (x:xs) (ys) 
    | otherwise =x : y : merge (xs) (ys) 
