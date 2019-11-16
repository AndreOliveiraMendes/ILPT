#include<stdio.h>
#include<stdlib.h>
#include<string.h>
void get_bin_mask(char*, char*);
int main(){
	char id1[16], id2[16], mask[16];
	while(scanf("%s %s %s", id1, id2, mask) != EOF){
		int i, nz = 0, same = 1;
		char b1[32], b2[32], bmask[32]; 
		get_bin_mask(b1, id1);
		get_bin_mask(b2, id2);
		get_bin_mask(bmask, mask);
		while(bmask[nz] != '\0' && bmask[nz] != '0')
			nz++;
		for(i = 0; i < nz; i++)
			if(b1[i] != b2[i]){
				same = 0;
				break;
			}
		if(same)
			printf("S\n");
		else
			printf("N\n");
	}
	return 0;
}
void get_bin_mask(char* dest, char* origin){
	int i, j = 0, k = 0;
	char aux[4];
	int aux_n;
	for(i = 0; origin[i] != '\0'; i++){
		if(origin[i] == '.'){
			aux[j] = '\0';
			aux_n = atoi(aux);
			int m = 256;
			do{
				m /= 2;
				if(aux_n >= m){
					dest[k]	= '1';
					aux_n -= m;
				} else
					dest[k] = '0';
				k++;
			} while (m > 1);
			j = 0;
		} else {
			aux[j++] = origin[i];
		}
	}
	aux[j] = '\0';
	aux_n = atoi(aux);
	int m = 256;
	do{
		m /= 2;
		if(aux_n >= m){
			dest[k]	= '1';
			aux_n -= m;
		} else
			dest[k] = '0';
		k++;
	} while (m > 1);
	dest[k] = '\0';
}
