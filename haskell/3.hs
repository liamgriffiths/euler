-- What is the largest prime factor of the number 600851475143?

main = do
    let n = 600851475143
    let list = takeWhile (\x -> x^2 < n) [3,5 .. n]
    print $ last $ filter (isPrimeFactor n) list

isPrimeFactor :: Integer -> Integer -> Bool
isPrimeFactor n x
    | not (isFactor n x) = False
    | not (isPrime x) = False
    | otherwise = True

isFactor :: Integer -> Integer -> Bool
isFactor n x = n `mod` x == 0

isPrime :: Integer -> Bool
isPrime n
    | n < 4 = True
    | 0 < (length $ filter (isFactor n) [2..(n-1)]) = False
    | otherwise = True
