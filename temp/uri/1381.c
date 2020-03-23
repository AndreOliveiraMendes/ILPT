#include<stdio.h>
#include<stdlib.h>
#define MOD 1300031
typedef long long ll;
ll gcd(ll a, ll b, ll* x, ll* y){
	if(b == 0){
		*x = 1;
		*y = 0;
		return a;
	} else{
		ll xi, yi;
		ll d = gcd(b, a%b, &xi, &yi);
		*x = yi;
		*y = xi - (a/b)*(yi);
		return d;
	}
}
ll inverso_mod(ll n, ll m){
	ll x, y;
	ll d = gcd(n, m, &x, &y);
	if (d == 1)
		return x >= 0 ? x : (x + m)%m;
	else
		return -1;
}
ll* expand_fat(ll n, ll* x, ll* vet){
	while(n > *x){
		*x += 1;
		vet = (ll*) realloc(vet, (*x + 1)*sizeof(ll));
		if(*x == 0){
			vet[*x] = 1;
		} else{
			vet[*x] = (vet[*x - 1]*(*x % MOD))%MOD;
		}
	}
	return vet;
}
int main(){
	int T;
	ll lp = -1;
	ll* fat = NULL;
	scanf("%d", &T);
	while(T--){
		ll n, c;
		scanf("%lld %lld", &n, &c);
		fat = expand_fat(n + c - 1, &lp, fat);
		ll inverso = inverso_mod(fat[n - 1] * fat[c], MOD);
		ll res = (fat[n + c - 1] * inverso) % MOD;
		printf("%lld\n", res);
	}
	return 0;
}
