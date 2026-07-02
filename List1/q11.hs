root :: Int -> Double
root 1 = sqrt 6
root n = sqrt (6 + root (n - 1))