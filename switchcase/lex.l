%{
    #include<stdio.h>
    #include<string.h>
    #include"y.tab.h"
%}


%%

"default"     yylval.str = strdup(yytext); return DEFAULT;
"("     yylval.str = strdup(yytext); return LP;
")"     yylval.str = strdup(yytext); return RP;
"switch"     yylval.str = strdup(yytext); return SWITCH;
"{"     yylval.str = strdup(yytext); return OB;
"}"     yylval.str = strdup(yytext); return CB;
"case"     yylval.str = strdup(yytext); return CASE;
";"     yylval.str = strdup(yytext); return SEMI;
[a-zA-Z_][a-zA-Z0-9_]*   yylval.str = strdup(yytext); return ID;
[0-9]+.?[0-9]*     yylval.str = strdup(yytext); return NUM;
"="     yylval.str = strdup(yytext); return ASSIGN;
"+"     yylval.str = strdup(yytext); return ADD;
"-"     yylval.str = strdup(yytext); return SUB;
"*"     yylval.str = strdup(yytext); return MUL;
"/"     yylval.str = strdup(yytext); return DIV;
"%"     yylval.str = strdup(yytext); return MOD;
("'"[a-zA-Z0-9+-/*]"'")     yylval.str = strdup(yytext); return QUO;
":"     yylval.str = strdup(yytext); return COLON;
[\n\t]  ;
"."     ;

%%

int yywrap(void){
    return 1;
}
