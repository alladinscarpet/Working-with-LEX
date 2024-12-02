%{
#include <stdio.h>
%}

%%

is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go  { printf("Verb: %s\n", yytext); }

.|\n   { /* ignore any other character or newline */ }

%%

int main() {
    yylex();  // Start lexical analysis
    return 0;
}

int yywrap() {
    return 1;  // End of input
}

