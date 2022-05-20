%{
unsigned int nbcar=0, nbmots=0, nblignes=0, nbLupin=0;
%}

fdl \n

%%

"je chante" { printf("I sing\n"); }
"tu chantes" { printf("You sing\n"); }
"il chante" { printf("he sings\n"); }
{fdl} {nblignes++; nbcar++;}
. {nbcar++;}
%%

int main() {
	yylex();
	//printf("\nnblignes: %d\nnbmots: %d\nnbcar: %d\nnbLupin: %d\n\n",nblignes, nbmots, nbcar, nbLupin);
	return 0;
}
