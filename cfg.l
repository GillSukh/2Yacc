%{
#include "y.tab.h"
void yyerror();
%}

%%
"a" {return A;}
"b" {return B;}
"c" {return C;}
[\n] {return NL;}
. { yyerror(); };
%%
