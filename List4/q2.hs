-- Defina uma função que retorne o elemento na n-ésima posição de uma lista.
posicao :: Int -> [a] -> a
posicao y xs = head(drop y xs)
