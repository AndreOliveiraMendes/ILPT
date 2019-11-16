#include<stdio.h>
typedef long long unsigned int cint;
int par_fib(cint);
int main(){
	cint n;
	scanf("%llu",&n);
	if(par_fib(n))
		printf("impar\n");
	else
		printf("par\n");
	return 0;
}
int par_fib(cint n){
	if(n%3 == 0)
		return 0;
	else
		return 1;
}
/*
	(1)
	1 (1)
	1 1 2 -> 1 (2) 2
	1 2 3 -> 2 (3) 3
*/
