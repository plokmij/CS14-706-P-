%{
#include<stdio.h>
int number_of_words=0; 
%}

%%

([a-zA-Z0-9]+[\n])|([a-zA-Z0-9]+[" "])|([][a-zA-Z0-9]+) {number_of_words++;}
%%

int yywrap(){
	return 1;
}

void main(){
	printf("Enter the text here:\n" );
	yylex();
	printf("Count = %d\n",number_of_words);
}