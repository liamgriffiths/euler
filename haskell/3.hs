#!/usr/bin/env runghc

import Data.Numbers.Primes

-- What is the largest prime factor of the number 600851475143 ?

n = 4000
main = print $ maxPrimeFactor $ reverse $ filter (\x -> odd x) [1..n]

-- yes, im new at haskell ;)
maxPrimeFactor (x:xs) = if n `mod` x == 0 then if isPrime(x) then x else maxPrimeFactor(xs) else maxPrimeFactor(xs)

