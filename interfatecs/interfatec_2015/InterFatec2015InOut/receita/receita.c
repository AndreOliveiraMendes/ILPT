#include<stdio.h>
#include<stdlib.h>
#include<stdlib.h>
struct remedio{
	char name[21];
	int D;
	int I;
	int C;
};
typedef struct remedio Remedio;
int mmc_list(int, Remedio*);
int mmc(int, int);
int mdc(int, int);
int main(){
	int Q, i;
	scanf("%d", &Q);
	for(i = 0; i < Q; i++){
		int N, j;
		scanf("%d", &N);
		Remedio* lista = (Remedio*) malloc(N*sizeof(Remedio));
		for(j = 0; j < N; j++){
			int k = j;
			Remedio aux;
			scanf("%s %d %d %d", &aux.name, &aux.D, &aux.I, &aux.C);
			while(k > 0){
				if(strcmp(lista[k - 1].name, aux.name) > 0){
					lista[k] = lista[k - 1];
					k--;
				} else
					break;
			}
			lista[k] = aux;
		}
		printf("Caso %d:\n", i + 1);
		int total = mmc_list(N, lista);
		if(total % 24 == 0)
			printf("Total de dias = %d\n", total/24);
		else
			printf("Total de dias = %d\n", total/24 + 1);
		for(j = 0; j < N; j++){
			int tot = lista[j].D*(1 + total/lista[j].I);
			printf("%s %d", lista[j].name, tot);
			if(tot%lista[j].C == 0)
				printf(" %d\n", tot/lista[j].C);
			else
				printf(" %d\n", tot/lista[j].C + 1);
		}
		printf("\n");
		free(lista);
	}
}
int mmc_list(int qtd, Remedio* list){
	if (qtd == 2)
		return list[0].I*list[1].I/mdc(list[0].I,list[1].I);
	else if (qtd > 2)
		return mmc(list[0].I, mmc_list(qtd - 1, &list[1]));
	else{
		printf("error, not enought argument");
		exit(1);
	}
}
int mmc(int a, int b){
	return a*b/mdc(a, b);
}
int mdc(int a, int b){
	if(a == 0)
		return b;
	else
		return mdc(b%a, a);
}
