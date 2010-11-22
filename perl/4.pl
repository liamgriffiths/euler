#!/usr/bin/perl
use List::Util qw(max);
use strict;

sub get_racecars{
  my ($i, $max, @racecars) = @_;
  return @racecars if ($i > $max);
  get_racecars(++$i, $max, (@racecars, grep { $_ eq reverse($_) } map { $i * $_ } ($i..$max)));
}

print max get_racecars(100, 999, ());
print "\n";
