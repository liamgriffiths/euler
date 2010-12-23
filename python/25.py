#!/usr/bin/env python

# too slow :(

def main():
	c = 3
	
	while(len(str(fib(c))) < 1000):
		c = c + 1

	print c


def fib(n):
  if(n == 0): 
		return 1
		
  if(n == 1): 
		return 1
		
  return fib(n - 1) + fib(n - 2)
  
	
if __name__ == '__main__':
	main();
