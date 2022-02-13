%{
unsigned int nbcar=0, nbmots=0, nblignes=0, nbLupin=0;
%}

nbLupin .*(Lupin).*
nbLUPIN .*(LUPIN).*
nblupin .*[Ll[Uu][Pp][Ii][Nn].*
nbluAnyPin .*(lu.*in).*
mot [^ \t\n]+
fdl \n

%%

.*{nbluAnyPin}.*{nbluAnyPin}.* {nbLupin++; nbmots++; printf("%d : %s", nblignes+1, yytext);}
{mot} {nbmots++; nbcar++;}
{fdl} {nblignes++; nbcar++;}
. {nbcar++;}

%%

int main() {
	yylex();
	printf("\nnblignes: %d\nnbmots: %d\nnbcar: %d\nnbLupin: %d\n\n",nblignes, nbmots, nbcar, nbLupin);
	return 0;
}
