#!/usr/bin/env node
var _ = require('./underscore');

// Find the sum of all the multiples of 3 or 5 below 1000.

console.log(
  _(1000)
    .range()
    .filter(function(e){ return (e % 3 == 0 || e % 5 == 0) ? e : 0 })
    .reduce(function(a, b){ return a + b })
);
  
