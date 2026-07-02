-- Usando foldl, defina a função dec2int :: [Int] -> Int que converte uma lista de inteiros em um inteiro.
dec2int :: [Int] -> Int
dec2int xs = foldl (\acc x -> acc * 10 + x) 0 xs