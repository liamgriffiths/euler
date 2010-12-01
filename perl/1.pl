#!/usr/bin/perl
use List::Util qw(sum);
use strict;

# Find the sum of all the multiples of 3 or 5 below 1000.

print sum grep { ($_ % 3 == 0) or ($_ % 5 == 0) } 1..999;
print "\n";
