#!/usr/bin/env node

function fib(n){
  if(n == 0){ return 1; }
  if(n == 1){ return 1; }
  return fib(n - 1) + fib(n - 2);
}

function under_one_k(){
  var c = 3;
  var f = 3;
  while(f.toString().length < 1000){
    f = fib(c);
    c++;
    console.log( f );
  }
  return c;
}

// might work, forgot that js can't handle large numbers (easily)
console.log( under_one_k() );

