#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int main(){
	int e11, e12, e21, e22;
	int qtd, i = 0;
	while(scanf("%d:%d %d:%d %d", &e11, &e12, &e21, &e22, &qtd) != EOF){
		int j = 0;
		i++;
		printf("Escalas %d:\n", i);
		for(j = 0; j < qtd; j++){
			double L, C, H, A;
			scanf("%lf %lf %lf", &L, &C, &H);
			L *= e12/100.;
			C *= e12/100.;
			A = L*C;
			H *= e22/100.;
			if(H >= 6)
				printf("%.0lf\n", ceil(A*floor(H/3)));
			else
				printf("%.0lf\n", A);
		}
		printf("\n");
	}
	return 0;
}
