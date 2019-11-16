#include <iostream>
int get_click(char*);
int GetClicks(char);
char map[] = {
    1, //a
    2, //b
    3, //c
    1, //d
    2, //e
    3, //f
    1, //g
    2, //h
    3, //i
    1, //j
    2, //k
    3, //l
    1, //m
    2, //n
    3, //o
    1, //p
    2, //q
    3, //r
    4, //s
    1, //t
    2, //u
    3, //v
    1, //w
    2, //x
    3, //y
    4, //z
    4, //A
    5, //B
    6, //C
    4, //D
    5, //E
    6, //F
    4, //G
    5, //H
    6, //I
    4, //J
    5, //K
    6, //L
    4, //M
    5, //N
    6, //O
    5, //P
    6, //Q
    7, //R
    8, //S
    4, //T
    5, //U
    6, //V
    5, //W
    6, //X
    7, //Y
    8, //Z
};
using namespace std;
int main(){
	char text[201];
	int k;
	cin >> text;
	cout << get_click(text);
	return 0;
}
int GetClicks(char c){
    if(c == ' '){
        return 1;
    } else if(c <= 'Z' && c >= 'A'){
        return map[c-'A' + 26];
    } else if(c <= 'z' && c >= 'a') {
        return map[c-'a'];
    }
    return 0;
}
int get_click(char* txt){
    int tot=0;
    for(int i = 0; txt[i] != '\0'; i++){
        tot+=GetClicks(txt[i]);
    }
    return tot;    
}
