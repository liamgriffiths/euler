-- What is the 10001st prime number?

import Data.Numbers.Primes

main = do
    print $ last $ take 10001 primes

