quadrado :: Int -> [(Int,Int)] 
quadrado n = [(x, y) | x <- [0..n], y <- [0..n], x /= y]