#include<stdio.h>
#include<stdlib.h>
struct competidor {
	int U; //indentificador da fatec
	int E; //indentificador da equipe
	int A; //quantidades de problemas resolvidos
	int T; //tempo total computado
};
typedef struct competidor com;
int classificar(com, com);
void exibir(com*, int);
int main(){
	int V, F, Q, i, j; //quantidade de vagas, numero de fatecs, numero de equipes
	scanf("%d %d %d", &V, &F, &Q);
	int* clas = (int*) calloc(F, sizeof(int));
	com* list = (com*) malloc(Q*sizeof(com));
	com* list_v = (com*) malloc(V*sizeof(com));
	for(i = 0; i < Q; i++){
		scanf("%d %d %d %d", &list[i].U, &list[i].E, &list[i].A, &list[i].T);
	}
	//ordenação por fatec
	for(j = Q - 1; j > 0; j--){
		for(i = 0; i < j; i++){
			if(list[i].U > list[i + 1].U || (list[i].U == list[i + 1].U && classificar(list[i], list[i + 1]))){
				com aux = list[i];
				list[i] = list[i + 1];
				list[i + 1] = aux;
			}
		}
	}
	j = 0;
	for(i = 0; i < Q; i++){
		if(clas[list[i].U] == 0){
			clas[list[i].U]++;
			list_v[j] = list[i];
			list[i].A = 0;
			list[i].T = 0;
			j++;
		}
	}
	free(clas);
	//vagas restantes	
	if(V > F){
		for(j = Q - 1; j > 0; j--){
			for(i = 0; i < j; i++){
				if(classificar(list[i], list[i + 1])){
					com aux = list[i];
					list[i] = list[i + 1];
					list[i + 1] = aux;
				}
			}
		}
		j = F;
		for(i = 0; i < V - F; i++){
			list_v[j] = list[i];
			j++;
		}
	}
	free(list);
	for(j = V; j > 0; j--){
		for(i = 0; i < j; i++){
			if(list_v[i].E > list_v[i + 1].E){
				com aux = list_v[i];
				list_v[i] = list_v[i + 1];
				list_v[i + 1] = aux;
			}
		}
	}
	for(i = 0; i < V; i++){
		if(i > 0)
			printf(", ");
		printf("%d", list_v[i].E);
	}
	printf(".\n");
	free(list_v);
	return 0;
}
int classificar(com q1, com q2){
	if(q1.A == q2.A){
		return q1.T > q2.T;
	} else{
		return q1.A < q2.A;
	}
}
void exibir(com* l, int tam){
	int i;
	printf("lista de participantes\n");
	for(i = 0; i < tam; i++){
		printf("%d %d %d %d\n", l[i].U, l[i].E, l[i].A, l[i].T);
	}
}
