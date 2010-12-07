#!/usr/bin/perl
use List::Util qw(reduce sum);
use bignum;
use strict;

# What is the value of the first triangle number to have over five hundred divisors?

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

# cache list of primes primes
our @primes = sieve_of_eratosthenes(5000);

sub is_prime{
  my $n = shift;
  return 1 if grep { $_ == $n } @primes;
  return 0;
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
  my $i = 3080;
  my $d = 0;
  
  until($d > $n){
    my $t = ($i**2 + $i) / 2;
    #if(($t & 1) == 0){
    if($t % 2 == 0){
      if($t % 3 == 0){
      if($t % 5 == 0){
      if($t % 7 == 0){
      if($t % 11 == 0){
      if($t % 13 == 0){
        $d = divizrrrs_from_prime_factors(prime_factors($t, 2, []));
      }}}}}
    }
    $i++;
  }
  return $i;
}

my $t = triangle_having_this_amount_of_divisors(500);
print triangle_number($t);
print "\n";

