-- 6) Definir a função recursiva merge :: Ord a => [a] -> [a] -> [a] que une duas listas ordenadas em uma lista ordenada.
merge :: Ord a => [a] -> [a] -> [a]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x < y     = x : merge xs (y:ys)
    | x > y     = y : merge (x:xs) ys
    | otherwise = x : y : merge xs ys