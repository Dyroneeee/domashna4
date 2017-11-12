%{
#include <stdio.h>
int wr = 0,li = 0;
%}
%%
[\n] { wr++; li++; }
[\t] { wr++; li++; }
[" "] {wr++;}
[^\n\t] ;
%%
int main()
{
char file[10];


printf("Enter the filename: ");
scanf("%s", file);


yyin=fopen(file, "r");
yylex();


printf("Words=%d lines=%d\n",wr,li);


return 0;
}
