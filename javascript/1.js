#!/usr/bin/env node

var list = new Array();
for(var i=1;i<1000;i++){
  if(i % 3 == 0 || i % 5 == 0){
    list.push(i);
  }
}

var total = 0;

for(var n=0;n<list.length;n++){
  total = total + list[n];
}

console.log(total);

