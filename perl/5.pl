#!/usr/bin/perl
use List::Util qw(max);
use strict;

sub least_common_multiple{
  my @nums = shift;
  my @prime_factors = map { get_prime_factors($_) } @nums;
  
}

sub is_prime{
  my $n = shift;
  for(my $i = 2; $i < $n; $i++){
    return 0 if ($n % $i == 0);
  }
  return 1;
}

sub get_prime_factors{
  my ($N, $i, @prime_factors) = @_;
  return @prime_factors if ($i * $i >= $N);
  if($N % $i == 0){
    if(is_prime($i)){
      push(@prime_factors, $i);
    }
  }
  get_prime_factors($N, ++$i, @prime_factors);
}

print map { $_ . "\n" } get_prime_factors(30,2);
