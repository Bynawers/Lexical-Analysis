%{

#define ID 1
#define CONST 10
#define AFFECT 20
#define OPERATOR 30
#define OP_MOINS 31
#define OP_PLUS 32
#define OP_DIV 33
#define OP_MULT 34
#define OP_MODULO 35
#define PAR_OUVRANTE 40
#define PAR_FERMANTE 41

#define LESS 42
#define GREATER 43
#define LESS_EQUAL 44
#define GREATER_EQUAL 45
#define EQUAL 46
#define DIFFERENT 47

#define PRINT 50
#define IF 51
#define ELSE 52
#define SPACE 98
#define FDL 99

unsigned int size=0;
unsigned int return_value=0;

unsigned char** list_id;
unsigned int size_id=0;

%}

variable [_a-zA-Z][_a-zA-Z0-9]*
constante [+-]?[0-9]+
print print
fdl \n

%%

{print} {return PRINT;}
{variable} {return ID;}
{constante} {return CONST;}
\+ {return OP_PLUS;}
\- {return OP_MOINS;}
\* {return OP_MULT;}
\/ {return OP_DIV;}
\% {return OP_MODULO;}
\( {return PAR_OUVRANTE;}
\) {return PAR_FERMANTE;}
\= {return AFFECT;}
[ ] {return SPACE;}
{fdl} {return FDL;}
.
%%

void add_id(char* name, int length) {

	int is_equal = 0;
	int i = 0;

	for (i = 0; i < size_id; i++) {
		if (list_id[i] == NULL){
			printf("---list_id[%d] = null\n", i);
			return;
		}
		if (strcmp(list_id[i], name) == 0) return;
	}

	print_list_id(i);
	list_id = malloc(8*(size_id+1));
	list_id[i] = malloc(length+2);

	strcpy(list_id[i], name);
	size_id++;
}

void print_list_id(int length){

	printf ("LIST\n");
	int i = 0;

	for (i = 0; i < length; i++) {

		printf ("---list_id[%d] = %s\n", i, list_id[i] );
	}
}

int main() {
	
	printf("\n");

	while (return_value = yylex()){
		switch(return_value) {
			case ID: {printf("ID : %s\n", yytext); add_id(yytext, yyleng); break;}
			case CONST: {printf("CONST : %s\n", yytext); break;}
			case OP_PLUS: {printf("OP_PLUS : %s\n", yytext); break;}
			case OP_MOINS: {printf("OP_MOINS : %s\n", yytext); break;}
			case OP_MULT: {printf("OP_MULT : %s\n", yytext); break;}
			case OP_DIV: {printf("OP_DIV : %s\n", yytext); break;}
			case OP_MODULO: {printf("OP_MODULO : %s\n", yytext); break;}
			case PAR_OUVRANTE: {printf("PAR_OUVRANTE : %s\n", yytext); break;}
			case PAR_FERMANTE: {printf("PAR_FERMANTE : %s\n", yytext); break;}
			case AFFECT: {printf("AFFECT : %s\n", yytext); break;}
			case PRINT: {printf("PRINT : %s\n", yytext); break;}
			case SPACE: {break;}
			case FDL: {break;}
			default: {printf("not recognized: %s\n", yytext);}
		}
	}

	return 0;
}