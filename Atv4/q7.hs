-- Redefina as funções map e filter usando foldr.
meuMap :: (a -> b) -> [a] -> [b]
meuMap f xs = foldr (\x acc -> f x : acc) [] xs

meuFilter :: (a -> Bool) -> [a] -> [a]
meuFilter f xs = foldr g [] xs
    where g m n = if f m then m : n else n 