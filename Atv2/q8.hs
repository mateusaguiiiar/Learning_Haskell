posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (i, y) <- zip [0..] xs, y == x]