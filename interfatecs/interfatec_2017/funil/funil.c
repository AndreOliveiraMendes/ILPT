#include<stdio.h>
int main(){
	int n;
	scanf("%d",&n);
	printf("%d\n",2*(n - 1));
	return 0;
}
/*
	T/2 = 1 + 2 + ... + (n - 1) = n*(n-1)/2
	B/2 = 1 + 1 + ... + 1 = n - 1
*/
