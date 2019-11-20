#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int main(){
	char num[11];
	scanf("%s", num);
	while(num[0] != '0'){
		int b, n = atoi(num), f = 0;
		for(b = 2; b < 10; b++){
			int s = 0, i;
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
