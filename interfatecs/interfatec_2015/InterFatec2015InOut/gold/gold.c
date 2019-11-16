#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int is_prime(int);
int get_next_prime(int);
void gold(int, int*, int);
int main(){
	int n, qtd = 0;
	int* prime = NULL;
	n = 1;
	do{
		n = get_next_prime(n);
		prime = (int*) realloc(prime, (qtd + 1)*sizeof(int));
		prime[qtd++] = n;
	} while (n < 1000000);
	scanf("%d", &n);
	while(n != 0){
		if(n%2 == 1)
			printf("erro\n");
		else
			gold(n, prime, qtd);
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
void gold(int n, int* prime, int qtd){
	int i, j;
	for(i = 0; i < qtd; i++){
		if(prime[i] > n)
			break;
		else{
			for(j = i; j < qtd; j++){
				if(prime[j] > n || prime[i] + prime[j] == n)
					break;
			}
			if(prime[i] + prime[j] == n)
				break;
		}
	}
	if(prime[i] + prime[j] == n)
		printf("%d %d\n", prime[i], prime[j]);
	else
		printf("do i even need to care about this?\n");
}
