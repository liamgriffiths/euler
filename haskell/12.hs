

main = do
    print $ crap

crap n
    | length (divisors n) < 500 = crap (n + 1)
    | otherwise = n

divisors n = do
    [x | x <- [1..(n-1)], mod n x == 0]
