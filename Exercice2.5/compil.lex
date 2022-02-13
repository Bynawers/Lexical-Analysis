%{
unsigned char** variables=NULL;
unsigned int nbVariable=0;
unsigned int nbConstante=0;
unsigned int nbOperateur=0;
unsigned int nbParenthese=0;
unsigned int nbAffectation=0;
unsigned int nbPrint=0;
unsigned int size=0;
%}

variable [_a-zA-Z][_a-zA-Z0-9]*
constante [+-]?[0-9]+
operateur [%+-/\*]
parenthese [)(]
affectation [=]
print print([_a-zA-Z][_a-zA-Z0-9]*)
fdl \n

%%

{variable} {
	size = size + strlen(yytext) + 10;
	printf("size: %d\n", size);
	variables = malloc(size);
	strcpy(variables[nbVariable], yytext);

	printf("variables: %s\n", variables[nbVariable]);
	nbVariable++;
	printf("v[0] : %s\n", variables[0]);
	}
{constante} {nbConstante++;}
{operateur} {nbOperateur++;}
{parenthese} {nbParenthese++;}
{affectation} {nbAffectation++;}
{print} {nbPrint++;}
{fdl}
.

%%

int main() {
	printf("\nDebut code\n");
	yylex();
	printf("Fin code\n\n");
	printf("Nombre de variables: %d,\n", nbVariable);
	printf("Nombre de constante: %d,\n", nbConstante);
	printf("Nombre d'opérateur: %d,\n", nbOperateur);
	printf("Nombre de parenthese: %d,\n", nbParenthese);
	printf("Nombre d'affectation: %d,\n", nbAffectation);
	printf("Nombre de print: %d,\n", nbPrint);

	printf("size: %ld\n", sizeof(variables));

	for (int i=0; i < sizeof(variables); i++) {
		printf("(%s)",variables[i]);
	}
	return 0;
}