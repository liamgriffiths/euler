#!/usr/bin/perl
use List::Util qw(reduce sum);
use strict;

# What is the value of the first triangle number to have over five hundred divisors?

sub triangle_number{
  my $n = shift;
  return sum 1..$n;
}

sub is_prime{
  my $n = shift;
  for(my $i = 2; $i < $n; $i++){
    return 0 if $n % $i == 0;
  }
  return 1;
}

sub prime_factors{
  my ($N, $i, $primes) = @_;
  return ($primes, $N) if $i > $N;
  if($N % $i == 0){
    if(is_prime($i)){
      push(@$primes, $i);
    }
  }
  return prime_factors($N, $i += 1, $primes);
}

sub divizrrrs_from_prime_factors{
  my ($prime_factors, $N) = @_;
  my @divisors = ();
  
  for(my $i = 0; $i < @$prime_factors; $i++){
    my $power = 0;
    until($N == 0 || $N % $prime_factors->[$i]){
      $power++;
      $N = $N / $prime_factors->[$i];
    }
    push(@divisors, $power + 1);
  }
  return reduce { $a * $b } @divisors;
}

sub triangle_having_this_amount_of_divisors{
  my $n = shift;
  my $i = 1;
  
  until(divizrrrs_from_prime_factors(prime_factors(triangle_number($i),2,[])) > $n){
    $i++;
  }
  return $i;
}

my $t = triangle_having_this_amount_of_divisors(500);
print triangle_number($t);
print "\n";

