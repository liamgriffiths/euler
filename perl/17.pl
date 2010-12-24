#!/usr/bin/perl

use strict;
use Lingua::EN::Numbers qw(num2en);

my $s = join(' ', map { num2en($_) } 1..1000);

$s =~ s/\-| //gi;

print length($s);
print "\n";
