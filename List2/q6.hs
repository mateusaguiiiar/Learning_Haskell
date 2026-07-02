perfeitos :: Int -> [Int]
fatores m = [x | x <- [1..m-1], mod m x == 0]
perfeitos n = [x | x <- [1..n], sum (fatores x) == x]