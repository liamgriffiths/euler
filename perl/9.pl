#!/usr/bin/perl
use strict;

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. 
# Find the product abc.

sub naive{
  my $n = shift;
  for(my $a = 1; $a < $n; $a++){
    for(my $b = $a + 1; $b < $n; $b++){
      for(my $c = $b + 1; $c < $n; $c++){
        if(($a + $b + $c == $n) && ($a * $a + $b * $b == $c * $c)){
          return join " < ", sort ($a, $b, $c);
        }
      }
    }
  }
}

#bah, a quicker way of doing this will be had!
print naive(1000);
print "\n";
