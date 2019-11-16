#include<stdio.h>
int to_int(char);
int dig_ver(char*);
int main(){
	char cod[55];
	scanf("%[^\n]",cod);
	printf("%d", dig_ver(cod));
	return 0;
}
int to_int(char car){
	return car - '0';
}
/*
	00000000001111111111222222222233333333334444444
	01234567890123456789012345678901234567890123456
	BBBMCCCCCXDDDDDDDDDDYEEEEEEEEEEZKFFFFVVVVVVVVVV
*/
int dig_ver(char* cod){
	int i, j = 0, sum = 0;
	for(i = 0; i < 55; i++){
		if((cod[i] >= '0' && cod[i] <= '9') || cod[i] == 'X'){
			if(j >= 0 && j <= 2)
				sum += 6*to_int(cod[i]);
			else if (j == 3)
				sum += 5*to_int(cod[i]);
			else if ((j >= 4 && j <= 8) || (j >= 10 && j <= 19) || (j >= 21 && j <= 30))
				sum += 2*to_int(cod[i]);
			else if (j >= 33 && j <= 36)
				sum += 4*to_int(cod[i]);
			else if (j >= 37 && j <= 46)
				sum += 3*to_int(cod[i]);
			j++;
		}
	}
	sum = 11 - sum%11;
	if (sum == 0 || sum > 9)
		return 1;
	else
		return sum;
}
