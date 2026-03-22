maxAndPosition :: [Int] -> (Int, Int)
maxAndPosition xs = (maxValue xs, position xs)

maxValue :: [Int] -> Int
maxValue [x] = x
maxValue (x:xs)
  | x > maxValue xs = x
  | otherwise       = maxValue xs

position :: [Int] -> Int
position xs = positionAux xs (maxValue xs) 1

positionAux :: [Int] -> Int -> Int -> Int
positionAux (x:xs) m pos
  | x == m    = pos
  | otherwise = positionAux xs m (pos + 1)
         
