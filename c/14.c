#include <stdio.h>

// The following iterative sequence is defined for the set of positive integers:
//   n  n/2 (n is even)
//   n  3n + 1 (n is odd)

// Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
// Which starting number, under one million, produces the longest chain?

int collatz(unsigned n){

  int cnt = 1;
    
  while(n > 1){
    if(n % 2 == 0){
			n = n / 2;
    }else{
      n = (3 * n) + 1;      
    }
    cnt++;
  }
  return cnt;
}

int main(void){
	
  int longest_chain = 0;
  int longest_chain_len = 0;
  int i;
  int chain;
  
  for(i = 1; i < 1000000; i++){
    chain = collatz(i);
    if(chain > longest_chain_len){
			longest_chain = i;
			longest_chain_len = chain;
		}
  }
  
  printf("%d\n", longest_chain);
  return 0;
}
