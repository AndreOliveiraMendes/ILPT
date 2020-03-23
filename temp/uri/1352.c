#include <stdio.h>
#include <stdlib.h>
#define E 0.0000001
typedef long long ll;
int AreTheSame(double a, double b){
	return (abs(a - b) < E);
}
int main(){
	while(1){
		ll lado;
		double porcentagem;
		scanf("%lld %lf", &lado, &porcentagem);
		if(lado == 0 && AreTheSame(0, porcentagem)) break;
		ll ganhadores = (lado * lado) * (lado * lado - 1) / 12;
		ganhadores *= 24;
		double res = (lado * lado) * (lado * lado - 1) * (lado * lado - 2) * (lado * lado - 3);
		res = (res * (porcentagem / 100.0)) / ganhadores;
		printf("%.2lf\n", res); 
	}
}
