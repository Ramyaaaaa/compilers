%{
    #include<stdio.h>
    #include<string.h>
    int k = 0;
    int l = 1;
    char dum[100];
    void genCodeBinary(char* first,char op,char* second, char* rtn)
    {
        char temp[100];
        char start[100] = "t";
        printf("t%d = %s %c %s\n", k, first, op, second);
        int t = k;
        k++;
        sprintf(temp,"%d",t);
        strcat(start,temp);
        strcpy(rtn, start);
    }
    
    void genCodeUnary(char* first,char op,char* rtn){
        char temp[100];
        char start[100] = "t";
        printf("t%d = %c %s\n",k,op,first);
        int t = k;
        k++;
        printf("\n");
        sprintf(temp,"%d",t);
        strcat(start,temp);
        strcpy(rtn, start);       
    }
    
    void printTest(){
        int r;
        printf("test :\n");
        for(r = 1;r<l;r++){
            printf("if t = %c goto L%d\n",dum[r],r);
        }
        printf("goto L%d\n",l);
    }
%}


%token LP RP OB CB SWITCH CASE SEMI NUM ID ASSIGN SUB ADD MOD DIV MUL QUO COLON DEFAULT
%type<str> LP RP OB CB SWITCH CASE SEMI ID ASSIGN SUB ADD MOD DIV MUL QUO COLON DEFAULT NUM 
%type<str> statement expr1 test test_case test1
%type<str> expr
%union{
    char* str;
}

%%

statement
        : expr1 OB test_case CB {printTest();printf("next :\n");}
        ;

expr1
    :SWITCH LP ID RP   {printf("Code for evaluating %s into t\ngoto test\n",$3);}
    ;
    
test_case
        : CASE test {printf("L%d :\n",l);l++;} COLON OB test1 CB {printf("goto next\n");} test_case 
        | DEFAULT {printf("L%d :\n",l);}COLON OB test1 {printf("goto next\n");} CB 
        | 
        ;
        
test
    : NUM {dum[l] = $1[0];} 
    | QUO {dum[l] = $1[1];}
    ;
    
test1
    : ID ASSIGN expr SEMI test1
    |
    ;

expr
    : expr ADD expr {char temp[100]; genCodeBinary($1,'+',$3,temp);  strcpy($$,temp);}
    | expr SUB expr {char temp[100]; genCodeBinary($1,'-',$3,temp);  strcpy($$,temp);} 
    | expr MUL expr {char temp[100]; genCodeBinary($1,'*',$3,temp);  strcpy($$,temp);}
    | expr DIV expr {char temp[100]; genCodeBinary($1,'/',$3,temp);  strcpy($$,temp);}
    | expr MOD expr {char temp[100]; genCodeBinary($1,'%',$3,temp);  strcpy($$,temp);}
    | SUB expr      {char temp[100]; genCodeUnary($1,'-',temp);  strcpy($$,temp);}
    | LP expr LP    { $$ = $2;}
    | ID            { $$ = $1;}    
    ;

%%

int main(int argc,char** argv){
    FILE* fp = fopen(argv[1],"r");
    yyset_in(fp);
    yyparse();
    return 0;
}

int yyerror(char* str){
    printf("There was an error\n");
    return 1;
}
