#include<stdio.h>
struct student{
	int rollno;
	char name[10];
	struct student *s;
};
void main()
{
	int a;
	struct student *s1=NULL,*tmp=NULL;
	s1=(struct student *)malloc(sizeof(struct student));
	tmp=s1;
	for(a=0;a<5;a++)
	{
		printf("Enter student %d name",(a+1));
		scanf("%s",s1->name);
		printf("Enter student %d roll no",(a+1));
		scanf("%d",&s1->rollno);
		s1->s=(struct student *)malloc(sizeof(struct student));
		s1=s1->s;
	}
	printf("Done Adding");
	s1=tmp;
    for(a=0;a<5;a++)
    {
        printf("\nstudent %d name is %s",(a+1),s1->name);
        printf("\nstudent %d roll no is %d",(a+1),s1->rollno);

        s1=s1->s;
    }
}