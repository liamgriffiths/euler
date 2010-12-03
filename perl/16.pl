#!/usr/bin/perl
use List::Util qw(sum);
use bignum;
use strict;

# What is the sum of the digits of the number 2^1000?

print sum split('', 2**1000);
print "\n";
