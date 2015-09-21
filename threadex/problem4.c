/*
Mayank Jobanputra
131026

compile using command given below:
gcc -o p2 problem.c -lpthread
*/
#include<stdio.h>
#include<pthread.h>
#include<stdlib.h>
#include<string.h>
#include<unistd.h>
#include<math.h>

pthread_mutex_t ANS_mutex;
int ANS[4][4];
int X[4][4] = { {1, 1, 1, 1},
                {2, 2, 2, 2},
                {3, 3, 3, 3},
                {4, 4, 4, 4}};

int Y[4][4] = { {1, 1, 1, 1},
                {2, 2, 2, 2},
                {3, 3, 3, 3},
                {4, 4, 4, 4}};

void *mul(void *index)
{
	long i=(long)index;
	long j,k;
	for(j=0;j<4;j++)
	{
		ANS[i][j]=0;
		for(k=0;k<4;k++)
		{
			if(pthread_mutex_lock(&ANS_mutex)==0)
			{
				ANS[i][j]+=X[i][k]*Y[k][j];
				pthread_mutex_unlock(&ANS_mutex);
			}
		}
		
	}
	pthread_exit(0);
}
int main()
{
	long i,j;
	pthread_t th[4];
	for(i=0;i<4;i++)
	{
		pthread_create(&th[i],NULL,&mul,(void*)i);
	}
	for(i=0;i<4;i++)
	{
		pthread_join(th[i],NULL);
	}
	for(i=0;i<4;i++)
	{
		for(j=0;j<4;j++)
		{
			printf("%d\t",ANS[i][j]);
		}
		printf("\n");
	}
	exit(0);
}
