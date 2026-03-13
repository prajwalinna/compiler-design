/* Program to recognize a^nb^n where n >= 0 */
%{
	#include <stdio.h>
	#include <stdlib.h>
%}
%token A B NL
%%
stmt : S NL {printf("Valid String.\n");exit(0);}
S : A S B
  | 
  ;
%%
int yyerror(){printf("Invalid String!\n");exit(0);}
void main(){
	printf("Enter the string:\n");
	yyparse();
}
