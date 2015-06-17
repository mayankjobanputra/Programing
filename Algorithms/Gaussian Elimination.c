#include<stdio.h>
int main()
{
    int i,j,k,n;
    float Matrix[8][8],c,x[8],sum=0.0;      //variables are taken as float because system may have real solution
    printf("\nEnter the max number of variables in given equations: ");
    scanf("%d",&n);
    printf("\nEnter the co-efficients :\n\n");
    for(i=1; i<=n; i++)
    {
        for(j=1; j<=(n+1); j++)
        {
            printf("Equation %d,co-efficient %d :",i,j);       //taking values from user
            scanf("%f",&Matrix[i][j]);
        }
    }
    for(j=1; j<=n; j++)
    {
        for(i=1; i<=n; i++)
        {
            if(i>j)
            {
                c=Matrix[i][j]/Matrix[j][j];    // This co-efficient will help us to make other elements of column zero
                for(k=1; k<=n+1; k++)
                {
                    Matrix[i][k]=Matrix[i][k]-c*Matrix[j][k];   //Making zeros in column
                }
            }
        }
    }
    x[n]=Matrix[n][n+1]/Matrix[n][n];

    for(i=n-1; i>=1; i--)
    {
        sum=0;
        for(j=i+1; j<=n; j++)
        {
            sum=sum+Matrix[i][j]*x[j];              //calculation the solution
        }
        x[i]=(Matrix[i][n+1]-sum)/Matrix[i][i];
    }
    printf("\nThe solution to the equations is: \n");
    for(i=1; i<=n; i++)
    {
        printf("\nx%d=%f\t",i,x[i]); // x1, x2, ... x6 are the solutions to the given system of equations
    }
    return(0);
}
