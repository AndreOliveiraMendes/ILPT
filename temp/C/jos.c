#include<stdio.h>
#include<stdlib.h>
typedef struct node Node;
struct node{
	int val;
	Node* prox;
};
int lst_IsEmpty(Node* L){
	return L == NULL;
}
int lst_Tamanho(Node* L){
	if(lst_IsEmpty(L))
		return 0;
	else{
		int tam = 0;
		Node* w = L;
		do{
			tam++;
			w = w->prox;
		} while (w != L);
		return tam;
	}
}
int lst_Conteudo(Node* L, int step){
	if(lst_IsEmpty(L))
		return -1;
	else{
		int i;
		Node* c = L;
		for(i = 1; i <= step; i++)
			c = c->prox;
		return c->val;
	}
}
Node* lst_Criar(){
	return NULL;
}
Node* lst_Inserir(Node* L, int val){
	Node* new = (Node*) malloc(sizeof(Node));
	new->val = val;
	if(lst_IsEmpty(L)){
		new->prox = new;
		return new;
	} else {
		Node* fim = L;
		while(fim->prox != L)
			fim = fim->prox;
		new->prox = L;
		fim->prox = new;
		return L;
	}
}
Node* lst_Remover(Node* L, int step){
	if(lst_IsEmpty(L))
		return NULL;
	int i;
	Node* c = L;
	for(i = 1; i < step; i++){
		c = c->prox;
	}
	Node* d = c->prox;
	Node* dn = d->prox;
	free(d);
	c->prox = dn;
	return c;
}
void lst_Liberar(Node* L){
	if(!lst_IsEmpty(L)){
		Node* p = L->prox;
		while(p != L){
			Node* q = p->prox;
			free(p);
			p = q;
		}
		free(p);
	}
}
void lst_Print(Node* L){
	Node* w = L;
	printf("list:");
	do{
		printf(" %d", w->val);
		w = w->prox;
	} while (w != L);
	printf("\n");
}
Node* find_S(Node* p, int P, int step){
	int i;
	for(i = 1; i < P; i++)
		p = p->prox;
	while(lst_Tamanho(p) > 1)
		p = lst_Remover(p, step);
	return p;
}
int main(){
	int M, P, N, i;
	while(scanf("%d %d %d", &M, &P, &N) != EOF){
		Node* p = lst_Criar();
		for(i = 1; i <= M; i++)
			p = lst_Inserir(p, i);
		p = find_S(p, P, N);
		int sobrevivente = lst_Conteudo(p, 0);
		if(sobrevivente == P)
			printf("VIVO\n");
		else
			printf("MORTO %d\n", sobrevivente);
		lst_Liberar(p);
	}
	return 0;
}
