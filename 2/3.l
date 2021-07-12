%{
  #include<string.h>
  #include<ctype.h>
  int offset = 0;
  void ceasar();
%}
%%
[a-zA-Z ]+ ceasar(yytext);
.
%%

void ceasar(char *yytext){
  char *copy = strdup(yytext);
   while (copy != NULL && *copy != '\0') {
    // printf("Iterating for: %c\n", *copy);
     if(isspace(*copy)){
        printf("%c", *copy);
     }
     else if(*copy >= 'a' && *copy <= 'z' ){
        *copy = *copy + offset;
        if(*copy > 'z'){
          *copy = *copy - 'z' + 'a' - 1;
        }
        printf("%c", *copy);
      } else if(*copy >= 'A' && *copy <='Z'){
        *copy = *copy + offset;
        if(*copy > 'Z'){
          *copy = *copy - 'Z' + 'A' - 1;
        }
        printf("%c", *copy);

      } else{
        printf("In else\n");
        printf("%c", *copy);
      }
      copy++;
    }
}

int main(){
  printf("Enter the offset for Ceasar Cypher: ");
  scanf("%d", &offset);
  yylex();
}
