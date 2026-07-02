altMap :: (a -> b) -> (a -> b) -> [a] -> [b]
altMap f g l = [f x | x <- l, len]
    [f x | x <- xs]