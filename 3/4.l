%{
  #include<string.h>
  #include<ctype.h>
  int num = 0;
  void count();
%}
%%
\/\*(.|\n)*\*\/|\/\/.* count(yytext);
. 
%%

void count(char *comment){
  num++;
  FILE *filePointer ;
  filePointer = fopen("comments.txt", "a") ;
  if ( filePointer == NULL ) {
    printf( "Couldn't open file!!") ;
  }
  else {
    fputs(comment, filePointer) ;   
    fputs("\n", filePointer) ;
    fclose(filePointer) ;
  }
}

int main(){
  yylex();
  printf("Number of comments are %d.\n", num);
}
