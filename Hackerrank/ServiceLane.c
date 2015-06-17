#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {

    int N=0,T=0,i=0,j=0,li=0,lo=0,k=0;
    int *width,*min;
    int tc[99998][2];

    printf("Welcome to Service Lane\n\n");
    printf("Enter the length or no segments of unit length : ");
    scanf("%d",&N);

    printf("Enter no of Test cases : ");
    scanf("%d",&T);
    width = (int *)calloc(N,sizeof(int));
    min = (int *)calloc(T,sizeof(int));
    for(i=0;i<N;i++)
    {
        scanf("%d",&width[i]);
        if(!(width[i]>0 && width[i]<4))
        {
            printf("Entered width of service lane is invalid. Please enter it between 1-3\n");
            i--;
        }
    }
    for(i=0;i<T;i++)
    {
        //do while
        printf("Entry Exit");
        scanf("%d",&tc[i][0]);
        scanf("%d",&tc[i][1]);

        min[i]=tc[i][0];
        for(j=tc[i][0];j<=tc[i][1];j++)
            {
                if(min[i]>width[j-1])
                    min[i]=width[j-1];
            }

    }
    for(j=0;j<T;j++)
            printf("%d",min[j]);
    return 0;
}
