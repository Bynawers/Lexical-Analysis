/* flex -o test.yy.c test lex           */
/* gcc -o test run test yy.C -lfl       */
/* ./test run (< test txt )             */
%{
unsigned char car;
unsigned int nbcarMaj[26];
unsigned int nbcar[26];
%}

fdl \n

%%

[A-Z] {nbcarMaj[yytext[0] - 65]++;}
[a-z] {nbcar[yytext[0] - 97]++;}

{fdl}
.

%%

int main() {
	yylex();
    for (int i; i < 26; i++) {
        printf ("%c : %d\n", i+65, nbcarMaj[i]);
    }

    for (int i; i < 26; i++) {
        printf ("%c : %d\n", i+97, nbcar[i]);
    }
	return 0;
}