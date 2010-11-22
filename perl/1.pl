#!/usr/bin/perl
use List::Util qw(sum);
use strict;

print sum( grep { ($_ % 3 == 0) or ($_ % 5 == 0) } (1..999) );
print "\n";
