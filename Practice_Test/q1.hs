{- Crie uma função que remova o menor elemento de uma lista. Caso este elemento apareça mais de uma vez na lista, remova apenas a primeira ocorrência.
Ex: A chamada removeMin [4,5,6,4,7] retornaria a lista [5,6,4,7] -}
removeMin :: Ord a => [a] -> [a]
removeMin [] = []
removeMin (x:xs)
    | x < xs = xs 
    | x > xs = x : removeMin xs 
    | otherwise = xs