mod2 :: Int -> Int -> Int
mod2 x y
  | x < y     = x
  | otherwise = mod2 (x - y) y