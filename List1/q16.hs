 inserir_posicao_x :: [Int] -> Int -> Int -> [Int]
 inserir_posicao_x xs n1 n2 = take (n1-1) xs ++ [n2] ++ tail (drop (n1-1) xs)