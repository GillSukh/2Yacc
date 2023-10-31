%{
#include "w.tab.h"
void wwerror();
%}

%%
"+" {return ADD;}
"-" {return SUB;}
"*" {return MULTIPLY;}
"/" {return DIVIDE;}
"(" {return LBRACKET;}
")" {return RBRACKET;}
[0-9]+ {wwlval.num = atoi(wwtext); return DIGIT;}
\n {return NEL;}
. { wwerror(); };
%%