#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int is_prime(int);
int get_next_prime(int);
int* increase_prime(int, int*, int*);
int* gold(int, int*, int*);
int main(){
	int n, qtd = 0;
	int* prime = NULL;
	scanf("%d", &n);
	while(n != 0){
		if(n%2 == 1)
			printf("erro\n");
		else
			prime = gold(n, prime, &qtd);
		scanf("%d", &n);
	}
	free(prime);
	return 0;
}
int is_prime(int p){
	if(p == 0 || p == 1)
		return 0;
	else{
		int i;
		for(i = 2; i <= sqrt(p); i++)
			if(p%i == 0)
				return 0;
		return 1;
	}
}
int get_next_prime(int p){
	do{
		p++;
	} while (!is_prime(p));
	return p;
}
/*
	prime[i]+prime[j] <= n
*/
int* gold(int n, int* prime, int* qtd){
	int i = 0, j;
	prime = increase_prime(0, prime, qtd);
	while(prime[i] <= n){
		j = i;
		while(prime[j] <= n - prime[i]){
			if(prime[i] + prime[j] == n)
				break;
			j++;
			prime = increase_prime(j, prime, qtd);
		}
		if(prime[i] + prime[j] == n)
			break;
		i++;
		prime = increase_prime(i, prime, qtd);
	}
	if(prime[i] + prime[j] == n)
		printf("%d %d\n", prime[i], prime[j]);
	else
		printf("do i even need to care about this?\n");
	return prime;
}
/*
	0	1	2	3	...	qtd - 1
*/
int* increase_prime(int i, int* prime, int* qtd){
	while(i >= *qtd){
		prime = (int*) realloc(prime, (*qtd + 1)*sizeof(int));
		if(*qtd == 0)
			prime[*qtd] = 2;
		else
			prime[*qtd] = get_next_prime(prime[*qtd - 1]);
		*qtd += 1;
	}
	return prime;
}
