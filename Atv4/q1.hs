-- Implemente uma função que receba uma lista de inteiros (que pode ou não estar ordenada) e retorne uma lista ordenada em ordem crescente formada apenas pelos números ímpares da lista recebida.
ordenar :: Ord a => [a] -> [a]
ordenar [] = []
ordenar (x:xs) = ordenar menores ++ [x] ++ ordenar maiores
  where
    menores = [y | y <- xs, y <= x]
    maiores = [y | y <- xs, y > x]

impares :: [Int] -> [Int]
impares xs = ordenar (filter odd xs)