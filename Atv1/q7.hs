inclusiveSum :: Int -> Int -> Int
inclusiveSum n1 n2 = sum [n1..n2]

exclusiveSum :: Int -> Int -> Int
exclusiveSum n1 n2 = sum [n1+1..n2-1]