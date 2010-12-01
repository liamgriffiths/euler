#!/usr/bin/perl
use strict;

# What is the 10001st prime number?


sub is_prime{
  my $n = shift;
  for(my $i = 2; $i < $n; $i++){
    return 0 if ($n % $i == 0);
  }
  return 1;
}

#kind of sucks via brute-force, could be better
sub get_big_prime{
  my ($i, $cnt, $N) = @_;
  return $N if $cnt == 10001;
  $N = $i if is_prime($i);
  $cnt++ if $N == $i;
  return get_big_prime($i+=2, $cnt, $N);
}

print get_big_prime(13, 5, 13);
print "\n";
