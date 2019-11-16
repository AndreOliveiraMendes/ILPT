#include<stdio.h>
int get_click(char*);
int main(){
	char text[201];
	scanf("%[^\n]",text);
	printf("%d\n",get_click(text));
	return 0;
}
/*
	abc def ghi jkl mno pqrs tuv wxyz
*/
int get_click(char* txt){
	int click = 0, i;
	for(i = 0; txt[i] != '\0'; i++){
		char c = txt[i];
		if(c == 'a' || c == 'd' || c == 'g' || c == 'j' || c == 'm' || c == 'p' || c == 't' || c == 'w')
			click += 1;
		else if(c == 'b' || c == 'e' || c == 'h' || c == 'k' || c == 'n' || c == 'q' || c == 'u' || c == 'x')
			click += 2;
		else if(c == 'c' || c == 'f' || c == 'i' || c == 'l' || c == 'o' || c == 'r' || c == 'v' || c == 'y')
			click += 3;
		else if(c == 'A' || c == 'D' || c == 'G' || c == 'J' || c == 'M' || c == 's' || c == 'T' || c == 'z')
			click += 4;
		else if(c == 'B' || c == 'E' || c == 'H' || c == 'K' || c == 'N' || c == 'P' || c == 'U' || c == 'W')
			click += 5;
		else if(c == 'C' || c == 'F' || c == 'I' || c == 'L' || c == 'O' || c == 'Q' || c == 'V' || c == 'X')
			click += 6;
		else if(c == 'R' || c == 'Y')
			click += 7;
		else if(c == 'S' || c == 'Z')
			click += 8;
		else
			click += 1;
	}
	return click;
}
