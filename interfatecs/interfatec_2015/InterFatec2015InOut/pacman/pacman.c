#include<stdio.h>
#include<stdlib.h>
struct map{
	int x;
	int y;
	int wall;
	int ghost;
	int exit;
	int visited;
};
typedef struct map Map;
int check_path(Map**, int, int, int);
int main(){
	int N, x, y, x_J, y_J;
	char path;
	while(scanf("%d", &N) != EOF){
		Map** maze = (Map**) malloc(N*sizeof(Map*));
		for(y = 0; y < N; y++){
			maze[y] = (Map*) malloc(N*sizeof(Map));
			for(x = 0; x < N; x++){
				scanf("%c",&path);
				if(path == '\n')
					scanf("%c",&path);
				if(path == '*')
					maze[y][x].wall = 1;
				else if(path == 'I'){
					maze[y][x].wall = 0;
					maze[y][x].ghost = 0;
					maze[y][x].exit = 0;
					maze[y][x].visited = 0;
					x_J = x;
					y_J = y;
				} else if(path == 'T'){
					maze[y][x].wall = 0;
					maze[y][x].ghost = 0;
					maze[y][x].exit = 1;
					maze[y][x].visited = 0;
				} else if (path == '#'){
					maze[y][x].wall = 0;
					maze[y][x].ghost = 1;
					maze[y][x].exit = 0;
					maze[y][x].visited = 0;
				} else{
					maze[y][x].wall = 0;
					maze[y][x].ghost = 0;
					maze[y][x].exit = 0;
					maze[y][x].visited = 0;
				}
			}
		}
		if(check_path(maze, x_J, y_J, N))
			printf("S\n");
		else
			printf("N\n");
		for(y = 0; y < N; y++)
			free(maze[y]);
		free(maze);
	}
	return 0;
}
int check_path(Map** maze, int x, int y, int N){
	if(x < 0 || x >= N || y < 0 || y >= N)
		return 0;
	else if(maze[y][x].wall)
		return 0;
	else if(maze[y][x].ghost)
		return 0;
	else if(maze[y][x].exit)
		return 1;
	else if(maze[y][x].visited)
		return 0;
	else{
		maze[y][x].visited = 1;
		if(check_path(maze, x - 1, y, N)){
			maze[y][x].visited = 0;
			return 1;
		} else if(check_path(maze, x + 1, y, N)){
			maze[y][x].visited = 0;
			return 1;
		} else if(check_path(maze, x, y - 1, N)){
			maze[y][x].visited = 0;
			return 1;
		} else if(check_path(maze, x, y + 1, N)){
			maze[y][x].visited = 0;
			return 1;
		} else{
			maze[y][x].visited = 0;
			return 0;
		}
	}
}
