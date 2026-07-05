-- ex1: Redefina a função putStr :: String -> IO () usando compreensão de listas e a função sequence_ :: [IO a] -> IO () disponível no Prelude.
putStr' :: String -> IO ()
putStr' xs = sequence_ [putChar x | x <- xs]

-- ex2: Defina uma ação somador :: IO () que lê uma dada quantidade de inteiros do teclado, um por linha, e exiba sua soma. Dica: Defina uma função auxiliar que recebe o total atual e quantos números ainda precisam ser lidos.
auxiliar :: Int -> Int -> IO ()
auxiliar 0 total = putStrLn ("A soma final é: " ++ show total)
auxiliar n total = do
    linha <- getLine
    let numero = read linha :: Int
    auxiliar (n - 1) (total + numero)

somador :: IO ()
somador = do
    putStrLn "Quantos numeros voce deseja somar?"
    linha <- getLine
    let quantidade = read linha :: Int
    auxiliar quantidade 0

-- ex3: Redefina a função somador usando a função sequence :: [IO a] -> IO [a] que executa uma lista de ações e retorna uma lista de resultados. Pesquise sobre a função sequence.
somador_ :: IO ()
somador_ = do
    putStrLn "Quantos numeros voce deseja somar?"
    linhaQtd <- getLine
    let n = read linhaQtd :: Int
    linhas <- sequence [getLine | _ <- [1..n]]
    let numeros = [read x :: Int | x <- linhas]
    let total = sum numeros
    putStrLn ("A soma final é: " ++ show total)

-- ex4: Tomando como base a função obterChar no material de aula, defina uma função chamada obterLinha :: IO String que se comporta exatamente como a função getLine :: IO String, mas permite a deleção de caracteres.Dica: O caractere delete é ‘\DEL’, e o caractere de controle para mover o cursor uma posição para a esquerda é ‘\b’.
obterLinha :: IO String
obterLinha = do x <- getChar
             if x == '\n' then
                return []
            elif x == '\b' then

            elif x ==
             else
                do xs <- getLine
                   return (x:xs)
            
