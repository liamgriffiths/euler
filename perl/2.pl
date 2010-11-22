#!/usr/bin/perl
use List::Util qw(sum);
use strict;

my @fibby = (1, 2);

while(@fibby[-1] < 4000000){
	push(@fibby, @fibby[-1] + @fibby[-2]);
}

print sum( grep { ( $_ & 1 ) == 0 } @fibby);
print "\n";
