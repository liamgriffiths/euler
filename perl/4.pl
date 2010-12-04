#!/usr/bin/perl
use List::Util qw(max);
use strict;

# Find the largest palindrome made from the product of two 3-digit numbers.

sub get_racecars{
  my ($i, $max, @racecars) = @_;
  return @racecars if $i > $max;
  return get_racecars(++$i, $max, (@racecars, grep { $_ eq reverse($_) } map { $i * $_ } $i..$max));
}

print max get_racecars(900, 999);
print "\n";
