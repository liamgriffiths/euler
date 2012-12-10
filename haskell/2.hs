-- Find the sum of all the even-valued terms in the Fibonacci sequence.
-- which do not exceed four million.

main = do
    print $ sum $ filter even $ takeWhile (<4000000) fibs

fibs :: [Integer]
fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
