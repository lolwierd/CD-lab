%{
  #include<string.h>
  #include<stdio.h>
  #define MAX_WORDS 101
  struct Dict{
    char *word;
    int count;
  };
  static struct Dict histogram[MAX_WORDS];
  int num_words = 0;
  void insert(char *);
  void printHistogram();
%}
%%
[a-zA-Z]+ insert(yytext);
.
%%

void insert(char *word){
  int foundIt = 0;
  char* copiedWord = strdup(word);
  for(int i=0; i<num_words; i++){
    if(strcmp(histogram[i].word, copiedWord)==0){
        histogram[i].count++;
        foundIt=1;
        break;
    }
  }
  if(!foundIt){
    struct Dict newEntry;
    newEntry.word = copiedWord;
    newEntry.count = 1;
    histogram[num_words++] = newEntry;
  }
}

void printHistogram(){
  for(int i=0; i<num_words; i++){
    printf("The word %s has occured %d time/s\n", histogram[i].word, histogram[i].count);
  }
}

int main(){
  printf("Enter a string: ");
  yylex();
  printHistogram();
}
