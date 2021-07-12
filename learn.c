#include<stdio.h>
#include<string.h>
#define MAX_WORDS 101

struct Dict{
 char *word;
 int count;
};

static struct Dict histogram[MAX_WORDS];
static int num_words = 0;
void insert(char *);
void printHistogram();

void insert(char *word){
  int foundIt = 0;
  puts(word);
  for(int i=0; i<num_words; i++){
    if(strcmp(histogram[i].word, word)==0){
        histogram[i].count++;
        foundIt=1;
        break;
    }
  }
  if(!foundIt){
    struct Dict newEntry;
    newEntry.word = word;
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
    insert("hi");
    insert("My");
    insert("name");
    insert("is");
    insert("ayaan");
    insert("hi");
    printHistogram();
}
