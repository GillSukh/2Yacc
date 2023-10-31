# Two YACC parsers into one 


Example of combining two YACC parsers together. This example combines example 1 and example 2 found [here].


## Compiling
Compile first parser as normal:
```
lex cfg.l
yacc -d cfg.y
```
Compile second parser with prefix 'ww' instead of default 'yy', and -b option when using yacc to change file prefix:
```
lex --prefix=ww cfg2.l
yacc -b w -p ww -d cfg2.y
```
Create the executable:
```
cc entry.c lex.yy.c lex.ww.c w.tab.c y.tab.c -ll
```
[//]: #
   [here]: <https://github.com/gauravjot/lex_yacc_cfg/>
