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

