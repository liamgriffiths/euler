#!/usr/bin/perl
use strict;

# What is the largest prime factor of the number 600851475143 ?

sub is_prime{
  my $n = shift;
  for(my $i = 2; $i < $n; $i++){
    return 0 if $n % $i == 0;
  }
  return 1;
}

sub largest_prime_factor{
  my $N = shift;
  my $largest = 0;
  
  for(my $i = 3; $i * $i <= $N; $i += 2){
    if($N % $i == 0){
      if(is_prime($i)){
        $largest = $i;
      }
    }    
  }
  return $largest;
}

print largest_prime_factor(600851475143);
print "\n";
