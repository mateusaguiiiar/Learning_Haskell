module Darts (score) where
score :: Float -> Float -> Int
score x y
    | dist > 10 = 0   -- Fora do alvo
    | dist > 5  = 1   -- Círculo externo (raio até 10)
    | dist > 1  = 5   -- Círculo médio (raio até 5)
    | otherwise = 10  -- Círculo interno (raio até 1)
  where 
    dist = sqrt (x**2 + y**2)