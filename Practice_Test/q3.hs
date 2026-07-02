combinarCom :: (a -> b -> c) -> [a] -> [b] -> [c]
combinarCom f (x:xs) [] = f x
combinarCom f [] (y:ys) = f y
combinarCom f (x:xs) (y:ys) = f x y : f xs ys