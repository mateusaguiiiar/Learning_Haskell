xMaior :: Double -> Double -> Double -> Double
xMaior a b c = (-b + sqrt (b^2 - 4*a*c)) / (2*a)

xMenor :: Double -> Double -> Double -> Double
xMenor a b c = (-b - sqrt (b^2 - 4*a*c)) / (2*a)