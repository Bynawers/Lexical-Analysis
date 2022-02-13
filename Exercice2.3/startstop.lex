%{
unsigned int nbcar=0;
%}

start start
stop stop
fdl \n

%%

{start} {printf ("Start command received\n");}
{stop} {printf ("Stop command received\n");}
{fdl}
.

%%

int main() {
	yylex();
	return 0;
}
