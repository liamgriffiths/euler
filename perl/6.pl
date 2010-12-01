#!/usr/bin/perl
use List::Util qw(sum reduce);
use strict;

# Find the difference between the sum of the squares of the first one 
# hundred natural numbers and the square of the sum.

my @nums = 1..100;
print sum (@nums) ** 2 - reduce { $a + $b**2 } @nums;
print "\n";

