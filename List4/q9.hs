-- Redefina as funções map f e iterate f da biblioteca padrão usando a função unfold.
unfold p h t x 
       | p x = []
       | otherwise = h x : unfold p h t (t x)

unfoldMap :: Eq a => (a -> b) -> [a] -> [b]
unfoldMap f (x:xs) = unfold (== []) (f.head) (drop 1) (x:xs)

unfoldIterate :: (a -> a) -> a -> [a]
unfoldIterate g y = unfold (const False) id g y
