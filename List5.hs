-- ex1: Semelhante à função somar, defina uma função de multiplicação recursiva para números naturais mult :: Nat -> Nat -> Nat.
data Nat = Zero | Suc Nat

somar :: Nat -> Nat -> Nat
somar Zero n = n
somar (Suc m) n = Suc (somar m n)

mult :: Nat -> Nat -> Nat
mult Zero n = Zero
mult (Suc m) n = somar n (mult m n)

-- ex2: O Prelude define o tipo Ordering data Ordering = LT | EQ | GT e a função compare :: Ord a => a -> a -> Ordering que decide se o primeiro valor recebido como argumento é menor (LT), igual (EQ) ou maior (GT) que o segundo argumento. Usando essa função redefina a função existe :: Ord a => a -> Arvore a -> Bool para árvores binárias de busca.
data Arvore a = Folha a | No (Arvore a) a (Arvore a)

existe :: Ord a => a -> Arvore a -> Bool
existe x (Folha y) = compare x y == EQ
existe x (No esq y dir) = case compare x y of
    EQ -> True
    LT -> existe x esq
    GT -> existe x dir

-- ex3: Considere o seguinte tipo de árvores binárias: data Arvore a = Folha a | No (Arvore a) (Arvore a) Digamos que a árvore é balanceada se a quantidade de folhas do lado esquerdo e do lado direito de todos os nós são iguais ou sua diferença é no máximo 1, e suas folhas são consideradas balanceadas por definição. Defina uma função balanceada :: Arvore a -> Bool que decide se uma árvore é balanceada ou não. IMPORTANTE: Uma árvore está balanceada se todas as suas sub-árvores também estão balanceadas. DICA: primeiro defina uma função que conta a quantidade de folhas em uma árvore
data Arvore3 a = Folha3 a | No3 (Arvore3 a) (Arvore3 a)

quantidade :: Arvore3 a -> Int
quantidade (Folha3 _) = 1
quantidade (No3 esq dir) = quantidade esq + quantidade dir

balanceada :: Arvore3 a -> Bool
balanceada (Folha3 _) = True
balanceada (No3 esq dir) = abs (quantidade esq - quantidade dir) <= 1 && balanceada esq && balanceada dir

-- ex4: Dada a definição data Expr = Val Int | Add Expr Expr defina a função avaliar :: Expr -> Int tal que avaliar substitui cada construtor Val na expressão pelo valor Int representado pelo construtor, e cada construtor Add pela aplicação da função (+).
data Expr = Val Int | Add Expr Expr

avaliar :: Expr -> Int
avaliar (Val y) = y
avaliar (Add e1 e2) = (+) (avaliar e1) (avaliar e2)

-- ex5: Utilizando a definição data Expr = Val Int | Op Expr Expr defina a função de alta ordem folde :: (Int -> a) -> (a -> a -> a) -> Expr -> a tal que folde f g substitui cada construtor Val na expressão pela aplicação da função f ao valor representado pelo Val, e cada construtor Op pela aplicação da função g aos valores resultantes de ambas as expressões codificadas pelo construtor Op.
data Expr5 = Val5 Int | Op Expr5 Expr5



-- ex6: Usando a função folde, defina a função eval :: Expr -> Int que avalia uma expressão para um valor inteiro. Uma forma de enxergar o que a função eval deve fazer é refletir sobre a seguinte frase: como eu posso usar a função folde de forma que eval avalie a expressão assumindo que Op signifique a soma? Por exemplo, se eu executasse eval (Op (Val 1) (Val 4)), assumindo que Op é a soma, ela deveria retornar 5. Perceba que Op poderia representar qualquer operação sobre os valores, basta que você forneça a operação desejada para a função folde.
