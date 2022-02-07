
%{
#include <stdio.h>
%}
%%
abc	{printf("Vu : abc\n"); return 1;}
def	{printf("Vu : def\n"); return 2;}
[ \t\n]* {printf("Vu : separateur\n"); return 3;}
. {printf("Vu : un caractere\n"); return 4;}
%%
int main () {
	yylex();
	return 0;
}
