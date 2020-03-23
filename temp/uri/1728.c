#include <stdio.h>
#include <stdlib.h>
int main(){
    char s1[8], s2[8], s3[8], aux;
    int a, b, c;
    do{
        int i = 0, j = 0;
        while(1){
            scanf("%c", &aux);
            printf("%c", aux);
            if (aux == '\n')
                break;
            else if (aux == '+'){
                s1[i] = '\0';
                a = atoi(s1);
                i = 0;
                j = 1;
            } else if (aux == '='){
                s2[i] = '\0';
                b = atoi(s2);
                i = 0;
                j = 2;
            } else {
                switch(j){
                    case 0:
                        s1[i] = aux;
                        break;
                    case 1:
                        s2[i] = aux;
                        break;
                    case 2:
                        s3[i] = aux;
                        break;
                    default:
                        printf("error\n");
                        break;
                }
                i++;
            }
        }
        c = atoi(s3);
        printf("\n");
        printf("%d %d %d\n", a, b, c);
    } while(a != 0 || b != 0 || c!= 0);
}
