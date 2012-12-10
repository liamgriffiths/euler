-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

main = do 
    print $ foldl lcm 1 [1..20]
