#include<stdio.h>
#include<stdlib.h>
struct sol{
	int m;
	int p1;
	int p2;
	int p3;
	int p4;
};
typedef struct sol Sol;
struct vsol{
	int qtd;
	Sol** sol;
};
typedef struct vsol VSol;
void get_sol(int h, VSol* arm){
	if(h <= 3)
		printf("%d nao e quadripartido\n", h);
	else if(arm->sol[h - 4])
		printf("%d %d %d %d %d\n", arm->sol[h - 4]->m, arm->sol[h - 4]->p1, arm->sol[h - 4]->p2, arm->sol[h - 4]->p3, arm->sol[h - 4]->p4);
	else
		printf("%d nao e quadripartido\n", h);
	printf("\n");
}
VSol* increase_sol_capacity(int h, VSol* arm){
	if (arm->qtd < h){
		int old = arm->qtd, i;
		arm->qtd = h;
		arm->sol = (Sol**) realloc(arm->sol, (h - 3)*sizeof(Sol*));
		for(i = old + 1; i <= h; i++)
			arm->sol[i - 4] = NULL;
	}
	return arm;
}
int get_div(int i, int h, int* k){
	*k += 1;
	while(i%(*k) != 0){
		*k += 1;
		if(*k > i || 2* *k > h - 2*(1 + i))
			return *k;
	}
	return *k;
}
VSol* solve(int h, VSol* arm){
	int i, j;
	arm = increase_sol_capacity(h, arm);
	for(i = 1; i <= h - 3; i++){
		int k = 1;
		for(j = i + 2; j <= h - 2 - i; j = i + 2*get_div(i, h, &k)){
			int p3, p4, sum;
			p3 = i/k + 1;
			p4 = k*(i + k);
			sum = i + j + p3 + p4;
			if(sum <= h){
				if(arm->sol[sum - 4]){
					if(k > arm->sol[sum - 4]->m){
						arm->sol[sum - 4]->m = k;
						arm->sol[sum - 4]->p1 = i;
						arm->sol[sum - 4]->p2 = j;
						arm->sol[sum - 4]->p3 = p3;
						arm->sol[sum - 4]->p4 = p4;
					}
				} else {
					arm->sol[sum - 4] = (Sol*) malloc(sizeof(Sol));
					if(arm->sol[sum - 4]){
						arm->sol[sum - 4]->m = k;
						arm->sol[sum - 4]->p1 = i;
						arm->sol[sum - 4]->p2 = j;
						arm->sol[sum - 4]->p3 = p3;
						arm->sol[sum - 4]->p4 = p4;
					} else
						exit(1);
				}
			}
		}	
	}
	return arm;
}
int main(){
	VSol* arm = (VSol*) malloc(sizeof(VSol));
	arm->qtd = 3;
	arm->sol = NULL;
	int inst = 0;
	while(1){
		int h;
		scanf("%d", &h);
		if(h == 0)
			break;
		inst++;
		printf("Instancia %d\n", inst);	
		if(h <= arm->qtd)
			get_sol(h, arm);
		else{
			arm = solve(h, arm);
			get_sol(h, arm);
		}
	}
	return 0;
}
