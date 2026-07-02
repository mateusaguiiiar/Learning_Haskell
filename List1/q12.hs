factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

combination :: Integer -> Integer -> Integer
combination m n = factorial m `div` (factorial n * factorial (m - n))