#!/usr/bin/env node

// The following iterative sequence is defined for the set of positive integers:
//   n  n/2 (n is even)
//   n  3n + 1 (n is odd)

// Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
// Which starting number, under one million, produces the longest chain?

function collatz(n){
  var init = n;
  var cnt = 1;
  
  while(n > 1){
    if(n % 2){
      n = 3 * n + 1;
    }else{
      n = n / 2;
    }
    cnt++;
  }
  return {'cnt' : cnt, 'n' : init};
}

function get_longest_collatz_chain(N){
  var longest_chain = {'cnt' : 0, 'n' : 0};
  
  for(var i = 1; i < N; i++){
    var chain = collatz(i);
    if(chain.cnt > longest_chain.cnt){
      longest_chain = chain;
    }
  }
  return longest_chain.n;
}

console.log(get_longest_collatz_chain(1000000));
