
%{
unsigned int nbcar=0, nbmots=0, nblignes=0;
%}

mot [^ \t\n]+
fdl \n

%%

{mot} {nbmots++; nbcar += yyleng; }
{fdl} {nblignes++; nbcar++;}
. {nbcar++;}

%%

int main() {
	yylex();
	printf("%d %d %d\n",nblignes, nbmots, nbcar);
	return 0;
}
