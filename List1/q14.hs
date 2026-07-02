dic10 :: [(Int, String)]
dic10 = [(0,"zero"), (1,"um"), (2,"dois"), (3,"tres"),
         (4,"quatro"), (5,"cinco"), (6,"seis"),
         (7,"sete"), (8,"oito"), (9,"nove")]

translateDigit :: Int -> String
translateDigit n = head [s | (d, s) <- dic10, d == n]

translateList :: [Int] -> [String]
translateList xs = map translateDigit xs