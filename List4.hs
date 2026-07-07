-- ex1: Implemente uma função que receba uma lista de inteiros (que pode ou não estar ordenada) e retorne uma lista ordenada em ordem crescente formada apenas pelos números ímpares da lista recebida.
ordenar :: Ord a => [a] -> [a]
ordenar [] = []
ordenar (x:xs) = ordenar menores ++ [x] ++ ordenar maiores
  where
    menores = [y | y <- xs, y <= x]
    maiores = [y | y <- xs, y > x]

impares :: [Int] -> [Int]
impares xs = ordenar (filter odd xs)

-- ex2: Defina uma função que retorne o elemento na n-ésima posição de uma lista.
posicao :: Int -> [a] -> a
posicao y xs = head(drop y xs)

-- ex3: Defina uma função que repita as ocorrências até um determinado valor, no formato de uma lista, tal que (NÃO PODE USAR O replicate):
repete :: Int -> ([[Int]], [Int])
repete n = (listOfLists, list)
    where
        listOfLists = [ [x | _ <- [1..x]] | x <- [n, n-1 .. 1] ]
        list = concat listOfLists

-- ex4: Construa uma função que cheque se o conteúdo de uma lista é um palíndromo:
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

-- ex5: Construa uma função que retorne os n primeiros elementos da sequência de Fibonacci:
fibonaccis :: Int -> Int
fibonaccis x
    | fibonaccis 0 = 0
    | fibonaccis 1 = 1
    | otherwise = fibonaccis (x-1) + fibonaccis (x-2)

fibonacci :: Int -> [Int]
fibonacci n =  [x | fibonaccis x <- [0..n-1]]

-- ex6: Sem olhar as definições no Prelude, defina a seguintes funções de alta ordem:

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

-- ex7: Redefina as funções map e filter usando foldr.
meuMap :: (a -> b) -> [a] -> [b]
meuMap f xs = foldr (\x acc -> f x : acc) [] xs

meuFilter :: (a -> Bool) -> [a] -> [a]
meuFilter f xs = foldr g [] xs
    where g m n = if f m then m : n else n 

-- ex8: Usando foldl, defina a função dec2int :: [Int] -> Int que converte uma lista de inteiros em um inteiro.
dec2int :: [Int] -> Int
dec2int xs = foldl (\acc x -> acc * 10 + x) 0 x

-- ex9: Redefina as funções map f e iterate f da biblioteca padrão usando a função unfold.
unfold p h t x 
       | p x = []
       | otherwise = h x : unfold p h t (t x)

unfoldMap :: Eq a => (a -> b) -> [a] -> [b]
unfoldMap f (x:xs) = unfold (== []) (f.head) (drop 1) (x:xs)

unfoldIterate :: (a -> a) -> a -> [a]
unfoldIterate g y = unfold (const False) id g y

-- ex10: Defina a função altMap :: (a -> b) -> (a -> b) -> [a] -> [b] que aplica de forma alternada as duas funções que recebe como argumento a elementos sucessivos em uma lista.
altMap :: (a -> b) -> (a -> b) -> [a] -> [b] 
altMap _ _ [] = []
altMap f g (x:xs) = f x : altMap g f xs

-- ex11: Sem olhar nas definições do Prelude, defina uma função de alta ordem chamada curry que converte uma função em um par (tupla) em uma versão currificada. Defina também uma função chamada uncurry que converte uma função currificada para dois argumentos em uma função que recebe um par (tupla).
myCurry :: ((a, b) -> c) -> a -> b -> c
myCurry f = \x y -> f (x,y)

myUncurry :: (a -> b -> c) -> (a, b) -> c
myUncurry f = \(x, y) -> f x y