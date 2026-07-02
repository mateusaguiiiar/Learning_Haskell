myReplicate :: Int -> a -> [a]
myReplicate n a = [a | _ <- [1..n]]