-- ex1: Usando compreensão de listas, forneça uma expressão que calcula a soma 1² +2²+...+100² dos quadrados dos primeiros 100 números inteiros.
sum [x^2 | x <- [1..100]]

-- ex2: Suponha que um plano de coordenadas de tamanho m x n é dado pela lista de todos os pares (x,y) de inteiros tal que 0  x  m e 0 y n. Usando compreensão de listas, defina a função grid :: Int -> Int -> [(Int,Int)] que retorna o plano de coordenadas de um dado tamanho.
grid :: Int -> Int -> [(Int,Int)]
grid m n = [(x, y) | x <- [0..m], y <- [0..n]]

-- ex3: Usando compreensão de listas e a função grid definida na questão anterior, defina uma função quadrado :: Int -> [(Int,Int)] que retorna um plano de coordenadas quadrado de tamanho n, excluindo a diagonal principal (0,0) a (n,n). 
quadrado :: Int -> [(Int,Int)] 
quadrado n = [(x, y) | x <- [0..n], y <- [0..n], x /= y]

-- ex4: De maneira similar à função length, mostre como a função replicate :: Int -> a -> [a] que produz uma lista de elementos idênticos pode ser definida usando compreensão de listas. 
myReplicate :: Int -> a -> [a]
myReplicate n a = [a | _ <- [1..n]]

-- ex5: Uma tupla (x,y,z) de inteiros positivos é Pitagoreana se satisfaz a equação x² + y² = z². Usando compreensão de listas com três geradores, defina a função pitag :: Int -> [(Int, Int, Int)] que retorna uma lista de todas as tuplas que satisfazem a condição estabelecida e cujos componentes são menores ou iguais a um dado limite.
pitag :: Int -> [(Int, Int, Int)]
pitag n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- ex6: Um inteiro positivo é perfeito se ele é igual à soma de todos os seus fatores, excluindo o próprio número. Usando compreensão de listas e a função fatores, defina a função perfeitos :: Int -> [Int] que retorna a lista de todos os números perfeitos menores que um limite informado como argumento. 
perfeitos :: Int -> [Int]
fatores m = [x | x <- [1..m-1], mod m x == 0]
perfeitos n = [x | x <- [1..n], sum (fatores x) == x]

-- ex7: Mostre que a compreensão de lista [(x,y) | x <- [1,	2], y <- [3,4]], com dois geradores, pode ser representada usando duas compreensões de lista, cada uma com apenas um gerador. Dica: Procure usar a função concat. 
concat [ [(x,y) | y <- [3,4]] | x <- [1,2] ]

-- ex8: Redefina a função posicoes usando a função buscar, disponível em 
posicoes :: Eq a => a -> [a] -> [Int]
posicoes x xs = [i | (i, y) <- zip [0..] xs, y == x]