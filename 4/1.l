%{
#include<stdio.h>
// int yyerror(char *s);
int num[10];
int index_num;
%}

%%
"IV" { printf("4"); }
"IX" { printf("9"); }
"XL" { printf("40"); }
"XC" { printf("90") ;}
"CD" { printf("400") ;}
"CM" { printf("900"); }
"I" { printf("1"); }
"V" { printf("5"); }
"X" { printf("10"); }
"L" { printf("50") ;}
"C" { printf("100") ;}
"D" { printf("500"); }
"M" { printf("1000"); }
.	
%%

int main(){
  yylex();
  // for(int i = 0; i <10; i++){
  //   printf("%d ", num[i]);
  // }
}





// "IV" { num[index_num] = 4; index_num++;  }
// "IX" { num[index_num] =  9; index_num++; }
// "XL" { num[index_num] = 40; index_num++; }
// "XC" { num[index_num] = 90; index_num++; }
// "CD" { num[index_num] =  400; index_num++;}
// "CM" { num[index_num] =  900; index_num++; }
// "I" { num[index_num]  =  1;index_num++; }
// "V" { num[index_num] =  5; index_num++;}
// "X" { num[index_num] =  10; index_num++; }
// "L" { num[index_num] =  50;index_num++; }
// "C" { num[index_num] =  100; index_num++; }
// "D" { num[index_num] =  500; index_num++;}
// "M" { num[index_num] =  1000; index_num++; }