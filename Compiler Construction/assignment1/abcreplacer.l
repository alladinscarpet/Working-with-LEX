%{
#include <stdio.h>
%}

%%
[a-zA-Z]*abc[a-zA-Z]*   { 
                            for (int i = 0; i < yyleng; i++) {
                                if (yytext[i] == 'a' && yytext[i+1] == 'b' && yytext[i+2] == 'c') {
                                    printf("ABC");
                                    i += 2;  // Skip 'abc'
                                } else {
                                    putchar(yytext[i]);
                                }
                            }
                            printf("\n");
                         }
[a-zA-Z]+               printf("%s\n", yytext); // For other English words
.                       putchar(yytext[0]);     // Print non-words as they are
\n                      putchar('\n');          // Print newlines
%%

int main() {
    yylex();  // Start the lexer
    return 0;
}

int yywrap() {
    return 1;
}

