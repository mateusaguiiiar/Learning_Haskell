multiplesOf :: Int -> Int -> Int -> [Int]
multiplesOf n1 n2 n3 = filter (\x -> x `mod` n3 == 0) [n1..n2]