#include <stdio.h>

int main(void){
    int i,n,m,a[1000],sum=0,cnt=0;
    scanf("%d%d",&n,&m);
    for(i=0;i<n;i++){
        scanf("%d",&a[i]);
        sum += a[i];
    }

    for(i=0;i<n;i++){
        if(a[i]*4*m>=sum){
            cnt++;
        }
    }
    if(cnt>=m){
        printf("Yes\n");
    }else{
        printf("No\n");
    }

    return 0;
}