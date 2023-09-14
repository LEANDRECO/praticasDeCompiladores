digito [0-9]
letra [A-Za-z]
%{
    int conta = 0;
%}
%%
{letra}({letra}|{digito})*   {conta++; puts(yytext);}
.                            /* nada */
\n                           /* nada */
%%
int yywrap(void){return 1;}
int main(void) {
    yylex();
    printf("Conta= %d\n", conta);
    return 0;
}