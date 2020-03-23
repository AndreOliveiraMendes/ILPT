#include<stdio.h>
#include<stdlib.h>
#define DEBUG_MODE 1
//double indexed tree definition
typedef struct tree Tree;
struct tree{
	int value;
	int index;
	Tree* left;
	Tree* right;
};

//double indexed tree inplementation
int tree_cmp(Tree* T, int value, int index){
	if(T == NULL){
		fprintf(stderr, "error, comparing with a nill value\n");
		exit(1);
	} else if(T->value == value)
		return T->index <= index;
	else
		return T->value <= value;
}
Tree* tree_create(){
	return NULL;
}
Tree* tree_insert(Tree* T, int value, int index){
	if(T == NULL){
		Tree* new = (Tree*) malloc(sizeof(Tree));
		if(new == NULL){
			fprintf(stderr, "not enought memory\n");
			exit(1);
		}
		new->value = value;
		new->index = index;
		new->left = tree_create();
		new->right = tree_create();
		return new;
	} else{
		if(tree_cmp(T, value, index))
			T->right = tree_insert(T->right, value, index);
		else
			T->left = tree_insert(T->left, value, index);
		return T;
	}
}
Tree* tree_delet(Tree* T, int value, int index){
	if(T == NULL)
		return T;
	else if(T->value == value && T->index == index){
		if(T->left == NULL){
			Tree* tmp = T->right;
			free(T);
			return tmp;
		} else if(T->right == NULL){
			Tree* tmp = T->left;
			free(T);
			return tmp;
		} else{
			Tree* tmp = T->right;
			while(tmp && tmp->left)
				tmp = tmp->left;
			T->value = tmp->value;
			T->index = tmp->index;
			T->right = tree_delet(T->right, tmp->value, tmp->index);
			return T;
		}
	} else{
		if(tree_cmp(T, value, index))
			T->right = tree_delet(T->right, value, index);
		else
			T->left = tree_delet(T->left, value, index);
		return T;
	}
}
void tree_value_print(Tree* T, int value_mode){
	if(T == NULL){
		fprintf(stderr, "error, printing a nill value");
		exit(1);
	} else{
		switch(value_mode){
			case 0:
				printf(" [%d,_]", T->value);
				break;
			case 1:
				printf(" [_,%d]", T->index );
				break;
			case 2:
				printf(" [%d,%d]", T->value, T->index);
				break;
			default:
				fprintf(stderr, "invalid value mode\n");
				exit(1);
				break;
		}
	}
}
void tree_print(Tree* T, int print_mode, int value_mode){
	if(T == NULL)
		return;
	else{
		switch(print_mode){
			case 0:
				tree_value_print(T, value_mode);
				tree_print(T->left, print_mode, value_mode);
				tree_print(T->right, print_mode, value_mode);
				break;
			case 1:
				tree_print(T->left, print_mode, value_mode);
				tree_value_print(T, value_mode);
				tree_print(T->right, print_mode, value_mode);
				break;
			case 2:
				tree_print(T->left, print_mode, value_mode);
				tree_print(T->right, print_mode, value_mode);
				tree_value_print(T, value_mode);
				break;
			default:
				fprintf(stderr, "invalid print mode\n");
				exit(1);
				break;
		}
	}
}
void tree_free(Tree* T){
	if(T == NULL)
		return;
	else{
		tree_free(T->left);
		tree_free(T->right);
		free(T);
	}
}

//problem specific
int check_interval(Tree* T, int value, int L, int R){
	if(T == NULL)
		return 0;
	else if(T->value >= value)
		return check_interval(T->left, value, L, R);
	else{
		int res = (T->index >= L) && (T->index <= R) ? 1 : 0;
		res += check_interval(T->left, value, L, R);
		res += check_interval(T->right, value, L, R);
		return res;
	}
}

int main(){
	int n, m, u, i;
	scanf("%d %d %d", &n, &m, &u);
	Tree* arv = tree_create();
	int* vet = (int*) malloc(n*sizeof(int));
	for(i = 1; i <= n; i++){
		int aux;
		scanf("%d", &aux);
		arv = tree_insert(arv, aux, i);
		vet[i - 1] = aux;
	}
	for(i = 1; i <= m; i++){
		int L, R, v, p, k;
		scanf("%d %d %d %d", &L, &R, &v, &p);
		k = check_interval(arv, v, L, R);
		arv = tree_delet(arv, vet[p - 1], p);
		vet[p - 1] = ((long int) k*u)/(R - L + 1);
		arv = tree_insert(arv, vet[p - 1], p);
	}
#if DEBUG_MODE
	tree_print(arv, 0, 2);
	printf("\n");
	tree_print(arv, 1, 2);
	printf("\n");
	tree_print(arv, 2, 2);
	printf("\n");
#endif
	for(i = 0; i < n; i++)
		printf("%d\n", vet[i]);
	free(vet);
	tree_free(arv);
	return 0;
}
