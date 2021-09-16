%{
%}
  
%%
"<"[^>]*> {printf("%s\n", yytext); }  
.
%%    
  
int main()
{
    yylex(); 
}