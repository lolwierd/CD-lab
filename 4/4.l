%{
int line_number = 1;
%}

%%
.*\n { printf("%10d %s", line_number++, yytext); }
%%

int main() {
yylex();
}
