%{
#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int k=0;
void gencode(char* first,char op,char* second, char* rtn)
{
    char temp[100];
    char start[100] = "t";
    printf("t%d = %s %c %s", k, first, op, second);
    int t = k;
    k++;
    printf("\n");
    sprintf(temp,"%d",t);
    strcat(start,temp);
    strcpy(rtn, start);
}

void gencodefor2D(char* text, char* rtn)
{
    
    char ii = text[2];
    char jj = text[5];
    int i  = ii-'0';
    int j  = jj-'0';
    
    
    // int i = atoi(text[2]);
    // int j = atoi(text[5]);
    printf("%d%d\n",i,j);
    int rows = 4;
    int cols = 3;

    char temp[100];
    char start[100] = "t";
    printf("t%d =i * %d", k, cols*4);
    k++;
    printf("t%d =j * %d", k, 4);
    k++;
    printf("t%d = t%d + t%d", k, k-1,k-2);
    k++;
    printf("t%d = a[t%d]", k, k-1);
    sprintf(temp,"%d",k);
    strcat("start",temp);
    
       strcpy(rtn, start);
    
    
}
void gencodeUnary(char op,char* second, char* rtn)
{
    char temp[100];
    char start[100] = "t";
    printf("t%d = %c %s", k, op, second);
    int t = k;
    k++;
    printf("\n");
    sprintf(temp,"%d",t);
    strcat(start,temp);
    strcpy(rtn, start);
}
%}

%union{
    char* str;
}

%token <str> ID ADD SUB MUL DIV ASSIGN LP RP MOD oneD twoD
%type <str> E
%left '+' '-'
%left '*' '/' '%'
%right '='
%start S

%%
S : ID ASSIGN E { printf("\n%s = %s \n", $1, $3); }

E : E ADD E {char temp[100]; gencode($1,'+',$3,temp); strcpy($$,temp);}
  | E SUB E {char temp[100]; gencode($1,'-',$3,temp); strcpy($$,temp);}
  | E MUL E {char temp[100]; gencode($1,'*',$3,temp); strcpy($$,temp);}
  | E DIV E {char temp[100]; gencode($1,'/',$3,temp); strcpy($$,temp);}
  | E MOD E {char temp[100]; gencode($1,'%',$3,temp); strcpy($$,temp);}
  | SUB E {char temp[100]; gencodeUnary('-',$2,temp); strcpy($$,temp);}
  | LP E RP {$$=$2;}
  | ID {$$=$1;}
//   | 1D {char temp[100]; gencodefor1D($1,temp); strcpy($$,temp);}
  | twoD {char temp[100]; printf("hi\n"); gencodefor2D($1,temp); strcpy($$,temp);}
  ;

%%
