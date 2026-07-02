-- Defina uma função que repita as ocorrências até um determinado valor, no formato de uma lista, tal que (NÃO PODE USAR O replicate):
repete :: Int -> ([[Int]], [Int])
repete n = (listOfLists, list)
    where
        listOfLists = [ [x | _ <- [1..x]] | x <- [n, n-1 .. 1] ]
        list = concat listOfLists