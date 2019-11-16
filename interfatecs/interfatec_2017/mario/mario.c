#include<stdio.h>
#include<stdlib.h>
struct cel{
	int type; //0 = livre, 1 = obstaculo
	int visited; //0 = não visitado, 1 = visitado
	int exit; //0 = não, 1 = sim
};
typedef struct cel cell;
struct player{
	int x;
	int y;
	int lp;
	int dam;//4 dam == lp--
};
typedef struct player p1;
int check_move(int, cell**, int, int, int, int);
int main(){
	int H, W, i, j, venceu = 0;
	scanf("%d %d", &H, &W);
	cell** map = (cell**) malloc(H*sizeof(cell*));
	p1 mario;
	for(i = 0; i < H; i++){
		map[i] = (cell*) malloc(W*sizeof(cell));
		for(j = 0; j < W; j++){
			char aux = getchar();
			if (aux == '\n')
				aux = getchar();
			if(aux == 'S' || aux == '.' || aux == 'T'){
				map[i][j].type = 0;
				if (aux == 'T')
					map[i][j].exit = 1;
				else
					map[i][j].exit = 0;
				if (aux == 'S'){
					map[i][j].visited = 0;
					mario.x = i;
					mario.y = j;
					mario.dam = 0;
				} else
					map[i][j].visited = 0;
			} else if(aux == 'x'){
				map[i][j].type = 1;
			}
		}
	}
	scanf("%d", &mario.lp);
	/*
		esquema de jogo:
		C1: tentar se mover:
		s:
			move
			verificar se chegou na saida
			dano
			verificar se morreu
		n:
			finaliza jogo
		mario.LP = mario.lp - mario.dam/4
		100*mario.LP = 100*mario.lp - 25*mario.dam
	*/
	while(1){
		int min = check_move(100*mario.lp + 25*(1 - mario.dam), map, H, W, mario.x, mario.y);
		map[mario.x][mario.y].visited = 1;
		if(min){
			if (check_move(100*mario.lp - 25*mario.dam, map, H, W, mario.x - 1, mario.y) == min - 1)
				mario.x--;
			else if(check_move(100*mario.lp - 25*mario.dam, map, H, W, mario.x + 1, mario.y) == min - 1)
				mario.x++;
			else if(check_move(100*mario.lp - 25*mario.dam, map, H, W, mario.x, mario.y - 1) == min - 1)
				mario.y--;
			else
				mario.y++;
		} else {
			break;
		}
		if(map[mario.x][mario.y].exit){
			venceu = 1;
			break;
		}
		mario.dam++;
		if(mario.dam == 4){
			mario.lp--;
			mario.dam = 0;
		}
		if(mario.lp == 0)
			break;
	}
	if (venceu)
		printf("SIM\n");
	else
		printf("NAO\n");
	for(i = 0; i < H; i++)
		free(map[i]);
	free(map);
	return 0;
}
int check_move(int life, cell** map, int H, int W, int x, int y){
	if(x < 0 || x >= H || y < 0 || y >= W) 
		return 0; //out of bounds
	else if(map[x][y].type)
		return 0; //obstacle
	else if(map[x][y].visited)
		return 0; //ja visitado
	else if(map[x][y].exit)
		return 1; //saida
	else if(life == 0)
		return 0; //perdeu antes de alcançar a saida
	else{
		map[x][y].visited = 1;
		int min = 0, aux;
		aux = check_move(life - 25, map, H, W, x - 1, y); //left
		if(aux){
			if(min == 0 || aux < min)
				min = aux;
		}
		aux = check_move(life - 25, map, H, W, x + 1, y); //right
		if(aux){
			if(min == 0 || aux < min)
				min = aux;
		}
		aux = check_move(life - 25, map, H, W, x, y - 1); //bottom
		if(aux){
			if(min == 0 || aux < min)
				min = aux;
		}
		aux = check_move(life - 25, map, H, W, x, y + 1); //top
		if(aux){
			if(min == 0 || aux < min)
				min = aux;
		}
		map[x][y].visited = 0;
		if(min)
			return min + 1;
		else
			return 0;
	}
}
