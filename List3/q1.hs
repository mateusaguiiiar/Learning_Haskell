-- Como a versão recursiva da função fatorial se comporta se dermos a ela como argumento um número negativo? Modifique a implementação clássica para não permitir números negativos adicionando uma guarda ao passo recursivo.
fatorial :: Int -> Int
fatorial 0 = 1
fatorial n
    | n < 0     = error "negative number"
    | otherwise = n * fatorial (n - 1)
