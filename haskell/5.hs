#!/usr/bin/env runghc

-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

-- cheating maybe?
main = print $ foldl lcm 1 [1..20]
