-- 8) Implemente recursivamente funções que:

-- a) calcule a soma de uma lista de inteiros; 
newSum :: Num a => [a] -> a
newSum [] = 0
newSum (x:xs) = x + newSum xs

-- b) obtenha o número de elementos de uma lista;
newLen :: [a] -> Int
newLen [] = 0
newLen (_:xs) = 1 + newLen xs

-- c) selecione o último elemento de uma lista não-vazia.
lastElemt :: [a] -> a 
lastElemt [x] = x
lastElemt (_:xs) = lastElemt xs 
