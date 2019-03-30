
D   [0-9]
NZ  [1-9]
L   [a-zA-Z_]
A   [a-zA-Z_0-9]
WS  [ \t\v\n\f]

%option yylineno
%{
	int k=0,i=0,p=0,o=0,c=0;
	int sco=0,mco=0;
%}

%%
"auto"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"char"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"const"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"double"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"enum"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"extern"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"float"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"int"				{printf("%d\t%s\tKeyword\n",yylineno,yytext);k++;}
"long"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"register"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"short"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"signed"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"sizeof"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"static"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"struct"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"void"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"typedef"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"union"				{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"unsigned"			{printf(" %d\t%s\tKeyword\n",yylineno,yytext);k++;}
"++"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;} 
"--"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;} 
"+"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;} 
"-"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}      
"*"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}      
"/"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}      
"%"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}      
"!="				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}  
"="				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}      
"^"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}
"!"				{printf("%d\t%s\t Operator\n",yylineno,yytext);o++;}
("[")				{printf("%d\t%s\t Punctuator LSQUARE\n",yylineno,yytext);p++;} 
("]")				{printf("%d\t%s\t Punctuator RSQUARE\n",yylineno,yytext);p++;}
";"				{printf("%d\t%s\t Punctuator SEMI-COLON\n",yylineno,yytext);p++;}
","				{printf("%d\t%s\t Punctuator COMMA\n",yylineno,yytext);p++;}
{L}{A}*				{printf("%d\t%s\t IDENTIFIER\n",yylineno,yytext);i++;}
{D}+				{printf("%d\t%s\t NUMBER\n",yylineno,yytext);c++;}
{WS}+					{}
.					{}

%%
#include<stdio.h>
int yywrap() {
    return 1;
}
main(argc, argv)
int argc;
char** argv;
{
if (argc > 1)
{
    FILE *file;
    file = fopen(argv[1], "r");
    if (!file)
    {
        fprintf(stderr, "failed open");
        exit(1);
    }
    yyin=file;
}
yylex();
printf("Keyword: %d\nConstants: %d\nOperators: %d\nPunctuators: %d\nIdentifiers: %d\n",k,c,o,p,i);
return 0; 
} 

