#!/usr/bin/perl
use List::Util qw(sum max reduce);
use strict;


sub triangle_number{
  my @n = @_;
  my $t = sum @n;


  return triangle_number((@n, $n[-1] + 1));
}
