/*
Compile using command below:
gcc problem3 -o p3 -lpthread -lm
*/
#include<stdio.h>
#include<stdlib.h>
#include<pthread.h>
#include<math.h>

int x =0;
float a,b,c,d;
float xp,xn;
double fact(long int x)
{
	if(x<=1)
		return 1;
	else
		return x*fact(x-1);
}
void *expfun(void *arg)
{
	long double ex=1.0;
	long double tmp = 0.0;
	int i=0;
	double j=1.0;
	while((ex-tmp))
	{
		i++;
		tmp = ex;
		ex += pow(x,i)/fact(i);

	}
	printf("\nValue of e^x = %LG",ex);

	
}
void *printval(void *ch)
{
	int *chs = (int *)ch;

	if(chs == 0)
	{
		xp =( -b + d)/(2*a);
		printf("\nPositive root %f",xp);
	}
	else
	{
		xn = (-b-d)/(2*a);
		printf("\nNegative root %f",xn);
	}
}
void *roots(void *arg)
{

	pthread_t x1,x2;
	d= b*b -4*a*c; 
	pthread_create(&x1,NULL,printval,(void*)0);
	pthread_create(&x2,NULL,printval,(void*)1);
	pthread_join(x1,NULL);
	pthread_join(x2,NULL);	

	
}
int main()
{
	printf("Enter the value of a b and c (space seprated)");
	scanf("%f%f%f",&a,&b,&c);
	printf("Enter the value of X for e^x");
	scanf("%d",&x);
	pthread_t p1,p2;
	pthread_create(&p1, NULL, expfun, NULL);
	pthread_create(&p2,NULL,roots,NULL);
	pthread_join(p1,NULL);
	pthread_join(p2,NULL);
	//pthread_create(&p2, NULL,roots,NULL);
	return 0;
}
