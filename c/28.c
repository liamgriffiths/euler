#include <stdio.h>

// What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral formed in the same way?

int main(void){

	int spiral, corner, cnt;
	int sum = 1;

	for(spiral = 3; spiral <= 1001; spiral +=2){
		for(corner = spiral * spiral, cnt = 1; cnt <= 4; corner -= (spiral - 1), cnt++){
			sum = sum + corner;
		}
	}	
	
	printf("%d\n", sum);

	return 0;
}
