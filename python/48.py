#!/usr/bin/env python

# Find the last ten digits of the series, 1^1 + 2^2 + 3^3 + ... + 1000^1000.


def main():
	s = 0;
	for i in range(1000):
		s = s + (i+1)**(i+1)
		
	x = str(s)
	print x[-10:]
	
	
if __name__ == '__main__':
	main()
