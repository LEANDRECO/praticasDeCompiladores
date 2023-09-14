%{
    int nchar, nline, nword;
%}
%%
\n {nline++; nchar++;}
[^ \n\t]+  {nword++; nchar = nchar + yyleng;}
.    {nchar++;}
%%
int yywrap(void) {return 1;}
int main (void) {
    yylex();
    printf("c = %d w = %d l=%d\n", nchar, nword, nline);
    return 0;
}