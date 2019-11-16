#include<stdio.h>
#include<stdlib.h>
#include<math.h>
struct trilho{
	int tipo;
	float coef;
	char est;
	int mult;
};
typedef struct trilho rail;
rail* get_map(char*, int*, int*);
void calculus(rail*, int, int, int, float);
int main(){
	char M[513], counter = 0, gb;
	while(scanf("%[^\n]", M) != EOF){
		counter++;
		int T, V, N, i, map_counter = 0;
		int* city_list = (int*) calloc(26, sizeof(int));
		rail* map = get_map(M, &map_counter, city_list);
		scanf("%d %d %d", &T, &V, &N);
		printf("Cidade %d:\n", counter);
		for(i = 0; i < N; i++){
			char c1, c2;
			gb = getchar();
			scanf("%c %c", &c1, &c2);
			calculus(map, city_list[c1 - 'A'], city_list[c2 - 'A'], T, V/3.6);
		}
		gb = getchar();
		printf("\n");
		free(map);
		free(city_list);
	}
}
void calculus(rail* map, int start, int end, int dS, float vb){
	int i;
	float dt = 0;
	for(i = start; i <= end; i++){
		if(map[i].tipo == 2){
			dt += (map[i].mult*dS)/(map[i].coef*vb);
		}
	}
	int ds = floor(dt);
	int dm = ds/60;
	ds %= 60;
	int dh = dm/60;
	dm %= 60;
	printf("%02dh %02dmin %02ds\n", dh, dm, ds);
}
rail* get_map(char* M, int* map_counter, int* city_list){
	int i, s_count = 0, mult = 1;
	rail* map = NULL;
	char s[4];
	for(i = 0; M[i] != '\0'; i++){
		char c = M[i];
		if(c == ' '){
			if(s_count > 0){
				s[s_count] = '\0';
				s_count = 0;
				mult = atoi(s);
			}
			continue;
		} else if (c >= 'A' && c <= 'Z'){
			map = (rail*) realloc(map, (*map_counter + 1)*sizeof(rail));
			map[*map_counter].tipo = 1;
			map[*map_counter].est = c;
			city_list[c - 'A'] = *map_counter;
			*map_counter += 1;
		} else if (c >= '0' && c <= '9'){
			s[s_count] = c;
			s_count++;
		} else if (c == '-'){
			map = (rail*) realloc(map, (*map_counter + 1)*sizeof(rail));
			map[*map_counter].tipo = 2;
			map[*map_counter].coef = 1;
			map[*map_counter].mult = mult;
			if(mult > 1)
				mult = 1;
			*map_counter += 1;
		} else if (c == '_'){
			map = (rail*) realloc(map, (*map_counter + 1)*sizeof(rail));
			map[*map_counter].tipo = 2;
			map[*map_counter].coef = 1.1;
			map[*map_counter].mult = mult;
			if(mult > 1)
				mult = 1;
			*map_counter += 1;
		} else if (c == '~'){
			map = (rail*) realloc(map, (*map_counter + 1)*sizeof(rail));
			map[*map_counter].tipo = 2;
			map[*map_counter].coef = 0.7;
			map[*map_counter].mult = mult;
			if(mult > 1)
				mult = 1;
			*map_counter += 1;
		} else if (c == '#'){
			map = (rail*) realloc(map, (*map_counter + 1)*sizeof(rail));
			map[*map_counter].tipo = 2;
			map[*map_counter].coef = 0.8;
			map[*map_counter].mult = mult;
			if(mult > 1)
				mult = 1;
			*map_counter += 1;
		}
	}
	return map;
}
