aboveAverage :: Double -> Double -> Double -> Int
aboveAverage a b c =
    length (filter (> avg) [a, b, c])
    where avg = (a + b + c) / 3