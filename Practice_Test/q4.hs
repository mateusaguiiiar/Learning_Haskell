diferencaEntreListas :: Eq a => [a] -> [a] -> [a]
diferencaEntreListas xs ys = filter (\x -> not (elem x ys)) xs