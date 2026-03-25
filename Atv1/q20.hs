myGroup :: String -> [String]
myGroup [] = []
myGroup (x:xs) = (x : takeWhile (== x) xs) : myGroup (dropWhile (== x) xs)

compressGroup :: String -> String
compressGroup xs
    | length xs > 3 = "!" ++ show (length xs) ++ [head xs]
    | otherwise     = xs

comprime :: String -> String
comprime xs = concat (map compressGroup (myGroup xs))