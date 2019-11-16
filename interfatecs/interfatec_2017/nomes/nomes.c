#include<stdio.h>
#include<stdio.h>
int verificar(char*, char*);
int main(){
	char nome1[21], nome2[21];
	int t;
	scanf("%s", nome1);
	scanf("%d",&t);
	while(t){
		scanf("%s", nome2);
		if (verificar(nome2, nome1))
			printf("VERIFICAR\n");
		else
			printf("NORMAL\n");
		t--;
	}
}
int verificar(char* n1, char* n2){
	int i, j;
	for(i = 0, j = 0; n1[i] != '\0' && n2[j] != '\0'; i++){
		if(n1[i] == n2[j])
			j++;
		else if (n1[i] == n2[0])
			j = 1;
		else
			j = 0;
		if(j >= 4)
			return 1;
	}
	return 0;
}
