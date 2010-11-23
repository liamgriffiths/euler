#!/usr/bin/perl
use List::Util qw(sum);
use strict;

my @nums = 1..100;
print ((sum(@nums)**2) - (sum(map { $_**2 } @nums)));
print "\n";

