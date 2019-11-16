#include<stdio.h>
#include<stdlib.h>
int main(){
	int N, M, i, a, b, x, y, dir;
	char c;
	while(scanf("%d", &N) != EOF){
		int** map = (int**) malloc(N*sizeof(int*));
		for(i = 0; i < N; i++)
			map[i] = (int*) calloc(N, sizeof(int));
		scanf("%d", &M);
		for(i = 0; i < M; i++){
			scanf("%d %d %c", &a, &b, &c);
			if(c == 'D')
				map[b - 1][a - 1] = 1;
			else if(c == 'I')
				map[b - 1][a - 1] = -1;
		}
		scanf("%d %c", &a, &c);
		switch(c){
			case 'E':
				x = 0;
				y = a - 1;
				dir = 1;
				break;
			case 'D':
				x = N - 1;
				y = a - 1;
				dir = 2;
				break;
			case 'S':
				x = a - 1;
				y = 0;
				dir = 3;
				break;
			case 'I':
				x = a - 1;
				y = N - 1;
				dir = 4;
				break;
			default:
				printf("error A\n");
			 	break;
		}
		while(x >= 0 && x < N && y >= 0 && y < N){
			/*
				1, 2, 3, 4
				4, 3, 2, 1
				----------
				1, 2, 3, 4
				3, 4, 1, 2
			*/
			if(map[x][y] == 1)
				dir = 5 - dir;
			else if(map[x][y] == -1)
				dir = dir < 3 ? dir + 2 : dir - 2;
			if(dir == 1)
				x++;
			else if(dir == 2)
				x--;
			else if(dir == 3)
				y++;
			else if(dir == 4)
				y--;
			else
				printf("error D\n");
		}
		if(x == -1)
			printf("%d E\n", y + 1);
		else if (x == N)
			printf("%d D\n", y + 1);
		else if (y == -1)
			printf("%d S\n", x + 1);
		else if (y == N)
			printf("%d I\n", x + 1);
		for(i = 0; i < N; i++)
			free(map[i]);
		free(map);
	}
	return 0;
}
