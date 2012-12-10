-- Find the sum of all the primes below two million.

import Data.Numbers.Primes

main = do
    print $ sum $ takeWhile (<2000000) primes




