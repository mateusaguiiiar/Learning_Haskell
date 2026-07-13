-- 1. Implemente recursivamente uma função que selecione o último elemento de uma lista não-vazia.  
lastElement :: [a] -> a
lastElement [y] = y
lastElement (x:xs) = lastElement xs

-- 2. Defina uma função que, dada uma lista numérica, retorne uma tupla que contenha o maior da lista bem como índice na lista.
oMaior :: Ord a => [a] -> (a, Int)
oMaior xs = (maior, indice)
  where
    maior = maximum xs
    indice = snd (head (filter (\(val, i) -> val == maior) (zip xs [0..])))

-- 3. Uma tupla (x, y, z) de inteiros positivos é Pitagoreana se satisfaz a equação $x^{2}+y^{2}=z^{2}$. Usando compreensão de listas com três geradores, defina a função pitag :: Int -> [(Int, Int, Int)] que retorna uma lista de todas as tuplas que satisfazem a condição estabelecida e cujos componentes são menores ou iguais a um dado limite.  
pitag :: Int -> [(Int, Int, Int)]
pitag a = [(x, y, z) | x <- [1..a], y <- [1..a], z <- [1..a], x^2 + y^2 == z^2]

-- 4. Crie uma função que faça uma compressão sobre uma sequência de caracteres iguais, substitua a sequência por !na, onde $n$ é o número de vezes que o caractere $a$ é repetido. Observe que só devem ser comprimidas sequências de tamanhos maiores que 3. Exemplo: A chamada comprime "asdffffghjjkllllpoooi" retorna "asd!4fghjjk!4lpoooi".  

-- 5. Construa uma função que cheque se o conteúdo de uma lista é um palíndromo. Exemplo: palindromo [1,2,3,4,5] = False, palindromo [1,2,3,2,1] = True e palindromo [1,2,2,1] = True.  
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs

-- 6. Crie um tipo de dado CorSemaforo com três construtores sem argumentos: Verde, Amarelo e Vermelho. Escreva uma função proximaCor :: CorSemaforo -> CorSemaforo que simule a transição automática de um semáforo de trânsito tradicional (onde Verde avança para Amarelo, Amarelo avança para Vermelho, e Vermelho retorna para Verde).  
data CorSemaforo = Verde | Amarelo | Vermelho

proximaCor :: CorSemaforo -> CorSemaforo
proximaCor Verde = Amarelo
proximaCor Amarelo = Vermelho
proximaCor Vermelho = Verde

-- 7. Considere o tipo de árvores binárias data Arvore a = Folha a | No (Arvore a) (Arvore a). Defina a função balancear :: [a] -> Arvore a que converte uma lista não vazia em uma árvore balanceada. Dica: primeiro defina uma função que divide uma lista em duas metades cujos tamanhos diferem em no máximo 1.  
data Arvore a = Folha a | No (Arvore a) (Arvore a)

metades :: [a] -> ([a], [a])
metades xs = splitAt (length xs `div` 2) xs

balancear :: [a] -> Arvore a
balancear [x] = Folha x
balancear xs = No (balancear esq) (balancear dir)
  where
    (esq, dir) = metades xs

-- 8. Para evitar bugs de conversão de moedas, crie dois tipos separados usando newtype: Real e Dolar, ambos encapsulando um valor Double. Escreva uma função converterRealParaDolar :: Double -> Real -> Dolar, onde o primeiro parâmetro é a taxa de câmbio (quanto vale 1 dólar em reais) e o segundo é o valor em Real. O retorno deve ser do tipo Dolar.  
newtype Real = R Double
newtype Dolar = D Double

converterRealParaDolar :: Double -> Real -> Dolar
converterRealParaDolar taxa (R valor) = D (valor / taxa)

-- 9. Escreva uma ação chamada repetirAteSair :: IO () que funciona como um eco contínuo. Ela lê uma linha de texto do usuário e a imprime de volta em caixa alta (letras maiúsculas). O loop só deve ser interrompido se o usuário digitar a palavra "SAIR".  
import Data.Char (toUpper)

repetirAteSair :: IO ()
repetirAteSair = do 
    x <- getLine
    if x == "SAIR"
        then return ()
        else do
            putStrLn (map toUpper x) 
            repetirAteSair

-- 10. Defina uma ação somador :: IO () que lê uma dada quantidade de inteiros do teclado, um por linha, e exiba sua soma. Exemplo: O programa pergunta "Quantos números?", o usuário digita 5. O usuário digita cinco números em sequência e, por fim, o programa exibe "O total é 15".
somador :: IO ()
somador = do
    putStrLn "Quantos números?"
    strN <- getLine
    let n = read strN :: Int
    somarN n 0

somarN :: Int -> Int -> IO ()
somarN 0 total = putStrLn ("O total é " ++ show total)
somarN faltam total = do
    strNum <- getLine
    let num = read strNum :: Int
    somarN (faltam - 1) (total + num)