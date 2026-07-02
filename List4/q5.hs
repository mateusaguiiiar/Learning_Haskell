-- Construa uma função que retorne os n primeiros elementos da sequência de Fibonacci:
fibonaccis :: Int -> Int
fibonaccis x
    | fibonaccis 0 = 0
    | fibonaccis 1 = 1
    | otherwise = fibonaccis (x-1) + fibonaccis (x-2)

fibonacci :: Int -> [Int]
fibonacci n =  [x | fibonaccis x <- [0..n-1]]
