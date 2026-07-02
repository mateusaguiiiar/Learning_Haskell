-- Construa uma função que cheque se o conteúdo de uma lista é um palíndromo:
palindromo :: Eq a => [a] -> Bool
palindromo xs = xs == reverse xs
