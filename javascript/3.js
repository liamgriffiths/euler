#!/usr/bin/env node

// What is the largest prime factor of the number 600851475143 ?

function is_prime(n){
  for(var i = 2; i < n; i++){
    if(n % i == 0){
      return 0;
    }
  }
  return 1;
}

function largest_prime_factor(N){
  var largest = 0;
  for(var i = 3; i * i <= N; i += 2){
    if(N % i == 0){
      if(is_prime(i)){
        largest = i;
      }
    }
  }
  return largest;
}

console.log( largest_prime_factor(600851475143) );
