#!/usr/bin/perl
use strict;

# The following iterative sequence is defined for the set of positive integers:
#   n  n/2 (n is even)
#   n  3n + 1 (n is odd)

# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?

sub collatz{
  my $n = shift;
  my $init = $n;
  my $cnt = 1;
  
  while($n > 1){
    if($n % 2){
      $n = 3 * $n + 1;
    }else{
      $n = $n / 2;
    }
    $cnt++;
  }
  my %chain = ("cnt" => $cnt, "n" => $init);
  return %chain;
}

sub get_longest_collatz_chain{
  my $N = shift;
  my %longest_chain = ("cnt" => 0, "n" => 0);
  my $i = 1;
  
  while($i < $N){
    my %chain = collatz($i);
    %longest_chain = %chain if $chain{cnt} > $longest_chain{cnt};
    $i++;
  }
  return $longest_chain{n};
}

print get_longest_collatz_chain(1000000);
print "\n";
