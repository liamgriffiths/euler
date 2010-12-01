#!/usr/bin/perl
use strict;

# What is the largest prime factor of the number 600851475143 ?

sub is_prime{
  my $n = shift;
  for(my $i = 2; $i < $n; $i++){
    return 0 if ($n % $i == 0);
  }
  return 1;
}

sub largest_prime_factor{
  my ($N, $i, $largest) = @_;
  return $largest if ($i * $i >= $N);
  if($N % $i == 0){
    if($i & 1){
      if(is_prime($i)){
        $largest = $i;
      }
    }
  }
  return largest_prime_factor($N, $i += 2, $largest);
}

print largest_prime_factor(600851475143, 3);
print "\n";
