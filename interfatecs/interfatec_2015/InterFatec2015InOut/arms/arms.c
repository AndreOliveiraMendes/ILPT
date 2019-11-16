#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int main(){
	int b, n, f, s, i;
	char num[11];
	scanf("%s", num);
	while(num[0] != '0'){
		n = atoi(num);
		f = 0;
		for(b = 2; b < 10; b++){
			s = 0;
			for(i = 0; num[i] != '\0'; i++)
				s += pow(num[i] - '0', b);
			if(n == s){
				f = 1;
				break;
			}
		}
		if(f)
			printf("%d\n", b);
		else
			printf("N\n");
		scanf("%s", num);
	}
	return 0;
}
