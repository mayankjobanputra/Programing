/*
Mayank Jobanputra
131026

compile using command given below:
gcc -o p2 problem.c -lpthread
*/
#include<pthread.h>
#include<stdio.h>

pthread_mutex_t count_mutex;
long long count;
void *printHello(void *arg)
{
    if (pthread_mutex_trylock(&count_mutex) == 0)
    {
    	printf("\nYeeah I go the Lock");
	pthread_mutex_unlock(&count_mutex);
    }
    else
    {
    	printf("\n:( I didn't got the lock");
    }
    pthread_exit (NULL);
}
void *increment_count(void *arg)
{
	    pthread_mutex_lock(&count_mutex);
	    for(count=0;count<50;count++)
	    count = count + 1;
	    pthread_mutex_unlock(&count_mutex);
	    printf("\nCount %lld",count);
	    pthread_exit(0);
}

int main()
{
	pthread_t p1,p2;
	pthread_create(&p1,NULL,increment_count,NULL);
	pthread_create(&p2,NULL,printHello,NULL);
	pthread_join(p1,NULL);
	pthread_join(p1,NULL);
}
