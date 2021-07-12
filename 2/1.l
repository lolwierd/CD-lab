%{
#include<stdio.h>
int num[26] = {0};
void printNum();
%}
%%
[aA][a-zA-z]* num[0]++;
[bB][a-zA-z]* num[1]++;
[cC][a-zA-z]* num[2]++;
[dD][a-zA-z]* num[3]++;
[eE][a-zA-z]* num[4]++;
[fF][a-zA-z]* num[5]++;
[gG][a-zA-z]* num[6]++;
[hH][a-zA-z]* num[7]++;
[iI][a-zA-z]* num[8]++;
[jJ][a-zA-z]* num[9]++;
[kK][a-zA-z]* num[10]++;
[lL][a-zA-z]* num[11]++;
[mM][a-zA-z]* num[12]++;
[nN][a-zA-z]* num[13]++;
[oO][a-zA-z]* num[14]++;
[pP][a-zA-z]* num[15]++;
[qQ][a-zA-z]* num[16]++;
[rR][a-zA-z]* num[17]++;
[sS][a-zA-z]* num[18]++;
[tT][a-zA-z]* num[19]++;
[uU][a-zA-z]* num[20]++;
[vV][a-zA-z]* num[21]++;
[wW][a-zA-z]* num[22]++;
[xX][a-zA-z]* num[23]++;
[yY][a-zA-z]* num[24]++;
[zZ][a-zA-z]* num[25]++;
.
%%

int main(){
  printf("Enter a string: \n");
  yylex();
  printNum();
}

void printNum(){
  for(int i = 0; i<26; i++){
    if(num[i]!=0){
      printf("Words starting with %c/%c have %d occurences!\n", (char)i+65, (char)i+97, num[i]);
    }
  }
}
