#include<stdio.h>
#include<stdlib.h>
int verificar_bingo(int**, int, int, int);
int conferir_bingo(int**, int, int);
int main(){
	int L, C, J, i, j, k, vit_J = -1, vit_T = -1, num_turnos;
	scanf("%d %d %d", &L, &C, &J);
	int*** B = (int***) malloc(J*sizeof(int**));
	for(i = 0; i < J; i++){
		B[i] = (int**) malloc(L*sizeof(int*));
		for(j = 0; j < L; j++){
			B[i][j] = (int*) malloc(C*sizeof(int));
			for(k = 0; k < C; k++)
				scanf("%d", &B[i][j][k]);
		}
	}
	scanf("%d",&num_turnos);
	for(i = 1; i <= num_turnos; i++){
		int s_num;
		scanf("%d", &s_num);
		for(j = 0; j < J; j++){
			int bv = verificar_bingo(B[j], L, C, s_num);
			if(bv && (vit_T == -1 || vit_T == i)){
				int venc = conferir_bingo(B[j], L, C);
				if(venc){
					if (vit_T == -1)
						vit_J = j;
					else
						vit_J = -1;
					vit_T = i;
				}
			} 
		}
	}
	for(i = 0; i < J; i++){
		for(j = 0; j < L; j++){
			free(B[i][j]);
		}
		free(B[i]);
	}
	free(B);
	if (vit_T == -1)
		printf("NADA\n");
	else if(vit_J == -1)
		printf("EMPATE\n");
	else
		printf("%d %d\n", vit_J + 1, vit_T);
	return 0;
}
int verificar_bingo(int** bing, int L, int C, int s_num){
	int i, j, achou = 0;
	for(i = 0; i < L; i++){
		for(j = 0; j < C; j++){
			if(bing[i][j] == s_num){
				bing[i][j] = 0;
				achou = 1;
				break;
			}
		}
		if (achou)
			break;
	}
	return achou;
}
int conferir_bingo(int** bing, int L, int C){
	int i, j;
	int* line = (int*) calloc(L, sizeof(int));
	int* column = (int*) calloc(C, sizeof(int));
	for(i = 0; i < L; i++){
		for(j = 0; j < C; j++){
			line[i] += bing[i][j];
			column[j] += bing[i][j];
			if(i == L - 1 && column[j] == 0){
				free(column);
				free(line);
				return 1;
			}
			if(j == C - 1 && line[i] == 0){
				free(column);
				free(line);
				return 1;
			}
		}
	}
	free(column);
	free(line);
	return 0;
}
