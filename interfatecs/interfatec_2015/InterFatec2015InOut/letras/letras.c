#include<stdio.h>
#include<stdlib.h>
void get_word(char*);
void shown(char*, int, int, char*);
int main(){
	int N, i;
	scanf("%d", &N);
	for(i = 0; i < N; i++){
		char word[16], comb[17];
		scanf("%s", word);
		get_word(word);
		shown(comb, 0, 0, word);
		printf("\n");
	}
}
void get_word(char* word){
	int i, j;
	int* letters = (int*) calloc(26, sizeof(int));
	for(i = 0; word[i] != '\0'; i++){
			if(word[i] >= 'a' && word[i] <= 'z')
				letters[word[i] - 'a'] = 1;
			else
				letters[word[i] - 'A'] = 1;
	}
	j = 0;
	for(i = 0; i < 26; i++)
		if(letters[i]){
			word[j] = 'A' + i;
			j++;
		}
	word[j] = '\0';
	free(letters);
}
void shown(char* word, int ci, int pl, char* wlist){
	int i;
	for(i = pl; i < 16 && wlist[i] != '\0'; i++){
		word[ci] = wlist[i];
		word[ci + 1] = '\0';
		if(i > 0)
			printf(" ");
		printf("%s", word);
		shown(word, ci + 1, i + 1, wlist);
	}
}
