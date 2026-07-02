-- Sem olhar as definições no Prelude, defina a seguintes funções de alta ordem:

-- a) Decide se todos os elementos de uma lista satisfazem um predicado:
all :: (a -> Bool) -> [a] -> Bool
all f xs = and (map f xs)

-- b) Decide se algum elemento de uma lista satisfaz um predicado:
any :: (a -> Bool) -> [a] -> Bool
any f xs = or (map f xs)

-- c) Selecione elementos de uma lista enquanto eles satisfazem um predicado:
takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile _ [] = []
takeWhile n (x:xs) 
    | f x = x : takeWhile n xs
    | otherwise = []

-- d) Remove elementos de uma lista enquanto eles satisfazem um predicado:
dropWhile :: (a -> Bool) -> [a] -> [a]
dropWhile _ [] = []
dropWhile f (x:xs) 
    | f x = dropWhile f xs
    | otherwise = x : xs