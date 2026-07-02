{- Defina a função euclides :: Int -> Int -> Int que implementa o algoritmo de Euclides para calcular o máximo divisor comum de dois inteiros não-negativos: se dois números são iguais, este número é o resultado; caso contrário, o menor número é subtraído do maior e o processo é repetido passando este novo número e o menor valor passado anteriormente como argumento. Exemplo:
> euclides 6 27
3 -}
euclides :: Int -> Int -> Int
euclides m n
    | m == n    = m
    | m > n     = euclides (m - n) n
    | otherwise = euclides m (n - m)