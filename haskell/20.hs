-- Find the sum of the digits in the number 100!

main = do
    print $ sum $ digits $ fac 100

fac :: Integer -> Integer
fac n = product [1..n]

digits :: Integer -> [Integer]
digits n = map (\x -> read [x] :: Integer) $ show n
