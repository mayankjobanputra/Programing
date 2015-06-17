#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {

    //

    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    int N,cnt=1,temp,tcnt=1,i,j,tmp;
    int *toys;
    printf("Enter No. of Toys");
    scanf("%d",&N);
    toys = (int *)malloc(N*sizeof(int));
    for(i=0; i<N; i++)
    {
        scanf("%d",&temp);
        j=i;
        while(i>0)
        {
            if(temp<toys[i-1])
            {
                i--;
                printf("%d",i);
            }
        }
        tmp=toys[i];
        toys[i]=temp;
        toys[j]=tmp;
        printf("Hi");
        i=j;

    }
    for(i=0;i<N;i++)
    printf("\n%d",toys[i]);
    return 0;
}
