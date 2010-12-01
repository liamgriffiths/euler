#!/usr/bin/perl
use List::Util qw(sum);
use strict;

# Find the sum of all the even-valued terms in the Fibonacci sequence 
# which do not exceed four million.

my @fibby = (1, 2);

while(@fibby[-1] < 4000000){
	push(@fibby, @fibby[-1] + @fibby[-2]);
}

print sum grep { ( $_ & 1 ) == 0 } @fibby;
print "\n";
