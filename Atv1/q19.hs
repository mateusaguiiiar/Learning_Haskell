removeDups :: [Int] -> [Int]
removeDups [] = []
removeDups (x:xs)
    | elem x xs = removeDups xs
    | otherwise = x : removeDups xs

intersection :: [Int] -> [Int] -> [Int]
intersection xs ys = filter (\x -> elem x ys) xs
