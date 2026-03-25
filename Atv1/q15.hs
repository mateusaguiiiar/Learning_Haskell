del_posicao_n :: [Int] -> Int -> [Int]
del_posicao_n xs n = take (n-1) xs ++ tail (drop (n-1) xs)