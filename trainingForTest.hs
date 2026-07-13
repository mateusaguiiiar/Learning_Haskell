-- 1. Implemente a função recursiva intercalar :: a -> [a] -> [a], que recebe um elemento e uma lista, e insere esse elemento entre cada um dos elementos originais da lista. Exemplo: a chamada intercalar ',' "abc" deve ter como saída "a,b,c".
intercalar :: a -> [a] -> [a]
intercalar z [] = []
intercalar z [y] = [y]
intercalar z (x:xs) = x : z : intercalar z xs

-- 2. Implemente a função frequencia :: Eq a => a -> [a] -> Int, que conta quantas vezes um determinado elemento aparece em uma lista. Para esta questão, você deve obrigatoriamente usar uma guarda na compreensão de listas para filtrar os elementos iguais ao argumento e então calcular o tamanho da lista resultante.
frequencia :: Eq a => a -> [a] -> Int
frequencia x xs = length [y | y <- xs, y == x]

--  3. Implemente a função diferencaEntreListas :: Eq a => [a] -> [a] -> [a], que retorna apenas os elementos da primeira lista que não estão na segunda lista. Exemplo: A chamada diferencaEntreListas [1, 2, 3, 4, 5] [2, 4, 6] retornaria a lista [1, 3, 5].  
diferencaEntreListas :: Eq a => [a] -> [a] -> [a]
diferencaEntreListas xs ys = [x | x <- xs, notElem x ys]

{-- 4. Crie uma função (inclua a definição do seu tipo) que recebe uma lista de funções e um segundo argumento. Esta função devolve uma lista com todas as funções que, ao serem aplicadas ao argumento, retornam False. Exemplo: A chamada escolheFuncoes [even, odd, (\x -> x \mod` 3 == 0)] 6 retornaria uma lista apenas com a função odd`.  
escolheFuncoes :: [(a -> Bool)] -> a -> [(a -> Bool)]
escolheFuncoes [] _ = []
escolheFuncoes (x:xs) y
    | not (x y) = x : escolheFuncoes xs y
    | otherwise = escolheFuncoes xs y 
--}

-- 5. Defina a função recursiva somar :: Int -> Int que retorna a soma dos inteiros não-negativos a partir de um valor até zero. Por exemplo, somar 3 deve retornar 6 (pois o cálculo realizado é 3 + 2 + 1 + 0 = 6).
somar :: Int -> Int 
somar 0 = 0
somar x = x + somar (x-1)

-- 6. Defina um tipo de dado chamado DiaSemana que represente os sete dias da semana (de Segunda a Domingo). Em seguida, implemente a função ehFimDeSemana :: DiaSemana -> Bool que retorna True se o dia fornecido for Sabado ou Domingo, e False para os demais dias da semana.  
data DiaSemana = Segunda | Terça | Quarta | Quinta | Sexta | Sábado | Domingo

ehFimDeSemana :: DiaSemana -> Bool
ehFimDeSemana Sábado = True
ehFimDeSemana Domingo = True
ehFimDeSemana _ = False

-- 7. Defina um tipo de dado chamado Cliente. Um cliente pode ser uma PessoaFisica (que armazena o nome como String e a idade como Int) ou uma PessoaJuridica (que armazena a razão social como String e o ano de fundação como Int). Escreva uma função obterNome :: Cliente -> String que extraia e retorne apenas o nome/razão social do cliente, independentemente de seu tipo.  
data Cliente = PessoaFísica String Int | PessoaJurídica String Int

obterNome :: Cliente -> String
obterNome (PessoaFísica n i) = n
obterNome (PessoaJurídica rs f) = rs

-- 8. Considerando o tipo de dado data Arvore a = Folha a | No (Arvore a) a (Arvore a), implemente a função altura :: Arvore a -> Int que calcula a altura da árvore. Uma Folha tem altura 1, e um No tem a altura calculada pelo maior caminho entre suas subárvores esquerda e direita, somado a 1.  
data Arvore a = Folha a | No (Arvore a) a (Arvore a)

altura :: Arvore a -> Int
altura (Folha a) = 1
altura (No esq _ dir) = 1 + max (altura esq) (altura dir)

-- 9. Considere o tipo de dados que representa a prioridade de uma tarefa: data Prioridade = Baixa | Media | Alta. Implemente manualmente a instância da classe Ord para este tipo (instance Ord Prioridade where). Defina o comportamento de forma que Baixa < Media e Media < Alta. (Você pode assumir que a instância de Eq já existe ou usar deriving Eq).  
data Prioridade = Baixa | Media | Alta

instance Ord Prioridade where
    Baixa <= _     = True 
    Media <= Baixa = False
    Media <= _     = True
    Alta  <= Alta  = True
    Alta  <= _     = False

-- 10. Escreva uma ação chamada contarEntrada :: IO (). Ela deve pedir para o usuário digitar uma linha de texto (utilizando getLine). O programa deve calcular o comprimento da string digitada e exibir na tela a mensagem: "Você digitou X caracteres.", onde X é o número de caracteres.  
contarEntrada :: IO ()
contarEntrada = do
    putStrLn "Digite uma linha de texto: "
    x <- getLine 
    putStrLn ("Você digitou " ++ show (length x) ++ " caracteres.")