%{
	#include<stdio.h>
%}
%{
	int yylex();
	void yyerror();
%}

%token A B C NL

%%
str0 : str1 str2 nl
    | { }
    ;
str1 : A str1 B
    | { }
    ;
str2 : C str2
    | { }
    ;
nl : NL {return(0);} 
   ;
%%

