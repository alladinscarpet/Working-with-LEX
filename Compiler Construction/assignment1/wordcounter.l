%{
#include <stdio.h>
int word_count = 0;
int total_size = 0;
%}

%%
[0-9a-zA-Z]+    { word_count++; total_size += yyleng; }  // Matches words
.            ;  // Ignore other characters
\n           ;  // Ignore newlines
%%

int main() {
    yylex();  // Start the lexer
    printf("Total words: %d\n", word_count);
    printf("Total characters: %d \n", total_size);
    return 0;
}

int yywrap() {
    return 1;
}

