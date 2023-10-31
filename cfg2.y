%{
	#include<stdio.h>

%}
%{
	int yylex();
	void yyerror();
%}

%union {
    int num;
}

%token ADD SUB MULTIPLY DIVIDE LBRACKET RBRACKET NEL
%token <num> DIGIT
%left ADD SUB
%left MULTIPLY DIVIDE

%%
str0 : str nl
    ;
str : str ADD str
    | str SUB str
    | str MULTIPLY str
    | str DIVIDE str
    | LBRACKET str RBRACKET
    | DIGIT
    ;
nl : NEL {return(0);} 
   ;
%%
