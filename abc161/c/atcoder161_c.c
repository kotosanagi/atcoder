#include <stdio.h>

long long int abscal(long long int a){
    if(a<0) a *= -1;
    return a;
}

int main(void){
    long long int n,k,i,tmp,ans;
    scanf("%lld%lld",&n,&k);

    tmp = n/k;
    ans = (n - tmp*k);

    if(abscal(ans)>abscal(ans-k)){
        ans = abscal(ans - k);
    }

    printf("%lld\n",ans);

    return 0;
}