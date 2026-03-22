multiplication :: Int -> Int -> Int
multiplication x y
  | y > 0     = sum (replicate y x)
  | y < 0     = -(sum (replicate (-y) x))
  | otherwise = 0