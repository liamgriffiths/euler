#!/usr/bin/perl
use List::Util qw(sum);
use bignum;
use strict;

# The following iterative sequence is defined for the set of positive integers:
#   n  n/2 (n is even)
#   n  3n + 1 (n is odd)

# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?

sub do_even{
  my $n = shift;
  return $n / 2;
}

sub do_odd{
  my $n = shift;
  return 3 * $n + 1;
}

sub new_chain_link{
  my $chain = shift;
  return [@$chain, $chain->[-1] % 2 == 0 ? do_even($chain->[-1]) : do_odd($chain->[-1])]
}

sub off_tha_chain{
  my ($max, $longest, $chain) = @_; 
  return $longest->[0] unless $max;
  return off_tha_chain($max-1, (@$longest > @$chain ? $longest : $chain), [$max-1]) if $chain->[-1] == 1;
  return off_tha_chain($max, $longest, new_chain_link($chain));
}

# while this should work, it is waaay to slow and uses up all my memory :(
# need to do some more on this one
print off_tha_chain(999999, [], [999999]);
print "\n";
