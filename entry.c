#include<stdio.h>
#include "y.tab.h"
#include "w.tab.h"
int flag=0;
int flag2=0;

void main()
{
	printf("Enter a string that contains equal amount of \"a\" and \"b\" characters and as many \"c\" characters.\n");
	yyparse();
	printf("Enter an arithmetic problem to validate.\n");
	wwparse();
	if(flag==0)
		printf("String valid.\n");
	if(flag2==0)
		printf("Arthmetic problem valid.\n");
}

void yyerror(){
	if(flag==0)
		printf("String invalid.\n");
		flag=1;
}

void wwerror(){
	if(flag2==0)
		printf("Arthmetic problem invalid.\n");
		flag2=1;
}

/* https://stackoverflow.com/a/40228272 */
int wwwrap (void )
{
    return 1;
}

