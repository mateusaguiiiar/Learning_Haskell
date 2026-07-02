-- 5) Defina as funções abaixo usando recursão:
-- a) Decidir se todos os valores em uma lista são True:
and :: [Bool] -> Bool
and [] = True
and (x:xs)
    | x = and xs 
    | otherwise = False

-- b) Concatenar uma lista de listas:
concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat xs

-- c) Produzir uma lista com n elementos idênticos:
replicate :: Int -> a -> [a]
replicate 0 n = []
replicate m n = (n : replicate (m-1) n) 

-- d)Selecionar o n-ésimo elemento em uma lista:
(!!) :: [a] -> Int -> a
(!!) (x:xs) 1 = x
(!!) (x:xs) n = (!!) xs (n-1)

-- e) Decidir se um valor está presente em uma lista:
elem :: Eq a => a -> [a] -> Bool
elem m [] = False
elem m (x:xs) 
    | x == m = True 
    | otherwise = elem m xs