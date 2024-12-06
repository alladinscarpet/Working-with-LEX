%{
#include <stdio.h>
%}

%%

(^|[[:space:]])(is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go)([[:space:]]|$) {
    printf("Verb: %s\n", yytext);
}

.|\n { /* ignore other characters and newlines */ }

%%

int main() {
    yylex();  // Start lexical analysis
    return 0;
}

int yywrap() {
    return 1;  // End of input
}

