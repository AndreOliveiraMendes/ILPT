#include<stdio.h>
#include<stdlib.h>
struct produto{
	int preco;
	int peso;
};
typedef struct produto Prod;
int max(a, b){
	if(a > b)
		return a;
	else
		return b;
}
int knot(Prod* p, int P, int pos){
	if(pos == 0 || P < 0)
		return 0;
	else if(p[pos - 1].peso > P)
		return knot(p, P, pos - 1);
	else
		return max(knot(p, P, pos - 1), knot(p, P - p[pos - 1].peso, pos - 1) + p[pos - 1].preco);
}
int main(){
	while(1){
		int T, P, i;
		scanf("%d", &T);
		if(T == 0)
			break;
		Prod* p = (Prod*) malloc(T*sizeof(Prod));
		for(i = 0; i < T; i++)
			scanf("%d %d", &p[i].preco, &p[i].peso);
		scanf("%d", &P);
		printf("%d\n", knot(p, P, T));
		free(p);
	}
}
