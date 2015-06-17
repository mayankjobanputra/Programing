#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
    int tc;
    int i=0;
    int cycle[10];
    int height[10];

    scanf("%d",&tc);

    for(i=0;i<tc;i++)
        scanf("%d",&cycle[i]);
    i=0;

    while(i!=tc)
        {
        height[i]=1;
        while(cycle[i]>1)
        {
        cycle[i] = cycle[i]-2;
        height[i] = 2*height[i] + 1;
    }
    if(cycle[i]==1)
        height[i]=2*height[i];

    printf("%d\n",height[i]);
        i++;

    }
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */
    return 0;
}
