#!/usr/bin/perl
use List::Util qw(sum);
use strict;

# Find the sum of all the primes below two million.

sub sieve_of_eratosthenes{
  my $N = shift;
  my @list = 0..$N;

  for(my $i = 2; $i < $N; $i++){
    if($list[$i]){
      for(my $j = $i; $j * $i <= $N; $j++){
        $list[$i * $j] = 0;
      }
    }
  }
  return grep { $_ > 1 } @list;
}


print sum sieve_of_eratosthenes(2000000);
print "\n";
