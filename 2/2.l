%{
  int lines = 0;
  int characters = 0;
  int words = 0;
  void count(int);
  void printNum();
%}
%%
[a-zA-Z]+ count(yyleng);
\n lines++;
.
%%

void count(int len){
  words++;
  characters+=len;
}

void printNum(){
  printf("There are %d lines, %d words and %d charcters in the given file.\n", lines, words, characters);
}

int main(){
  yylex();
  printNum();
}
