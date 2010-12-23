#!/usr/bin/env python
from functools import reduce

# Find the sum of the digits in the number 100!

def fac(n):
	return 1 if n == 0 else n * fac(n-1)
	
def main():
	print reduce(lambda x, y: int(x) + int(y), list(str(fac(100))))
	
if __name__ == '__main__':
	main()



