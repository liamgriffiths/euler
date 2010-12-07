#!/usr/bin/env node
var _ = require('./underscore');

// Find the sum of all the primes below two million.

function sieve_of_eratosthenes(n){
  var list = _.range(n + 1);

  for(var i = 2; i < n; i++){
    if(list[i]){
      for(var j = i; j * i <= n; j++){
        list[i * j] = 0;
      }
    }
  }
  return _.filter(list, function (e){ return e > 1 });
}

var primes = sieve_of_eratosthenes(2000000);
console.log( _.reduce(primes, function (a, b){ return a + b }) );




