%{
#include<stdio.h>
int is_simple=1;
%}

%%
[ \t\n]+[aA][nN][dD][ \t\n]+ {is_simple=0;}
[ \t\n]+[bB][uU][tT][ \t\n]+ {is_simple=0;}
[ \t\n]+[oO][rR][ \t\n]+ {is_simple=0;}
.
%%

main()
{
  printf("Enter the sentence: ");
  yylex();

  if(is_simple==1)
    printf("\n the given sentence is simple sentence\n");
  else
    printf("\n the given sentence is compound sentence\n");
}