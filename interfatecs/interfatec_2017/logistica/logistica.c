#include<stdio.h>
#include<stdlib.h>
struct container{
	int* ind;
	int espaco_livre;
	int total_elem;
};
typedef struct container cont;
struct pallet{
	int cont;
	int pos;
};
typedef struct pallet pal;
int main(){
	int i, j, aux;
	char n;
	cont* list = (cont*) malloc(50*sizeof(cont));
	for(i = 0; i < 50; i++){
		list[i].espaco_livre = 8;
		list[i].ind = NULL;
		list[i].total_elem = 0;
	}
	pal* plts = NULL;
	i = 0;
	while(1){
		n = getchar();
		if(n == '\n')
			break;
		if(n == ' ')
			continue;
		aux = n - '0';
		j = 0;
		while(list[j].espaco_livre < aux)
			j++;
		list[j].espaco_livre -= aux;
		plts = (pal*) realloc(plts, (i + 1)*sizeof(pal));
		plts[i].cont = j;
		plts[i].pos = list[j].total_elem;
		list[j].ind = (int*) realloc(list[j].ind, (list[j].total_elem + 1)*sizeof(int));
		list[j].ind[list[j].total_elem++] = i++;
	}
	while(scanf("%d", &aux) != EOF){
		int pallet = aux - 1;
		int cont = plts[pallet].cont;
		int pos = plts[pallet].pos;
		printf("Pallet %d Container %d", aux, cont + 1);
		if(list[cont].total_elem - 1 == pos)
			printf(" TOPO");
		else{
			printf(" Retirar");
			for(i = list[cont].total_elem - 1; i > pos; i--)
				printf(" %d", list[cont].ind[i] + 1);
		}
		printf("\n");
	}
	for(i = 0; i < 50; i++)
		if(list[i].total_elem)
			free(list[i].ind);
	free(list);
	free(plts);
	return 0;
}
