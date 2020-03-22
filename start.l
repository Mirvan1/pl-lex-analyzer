%{
#define INTEGER 1
#define FLOAT 2
#define VARIABLE 3
#define STRING 4
#define OPERATOR 5  
#define COMMENT 6
#define RELATIONALOP 7
#define BOOLEAN 8
#define SINGLE_QUOTES 9
#define DATA_TYPE 10
#define COMMA 11
#define SEMICOLON 12
#define EQUALS 13
#define BRACKET_OPEN 14
#define BRACKET_CLOSE 15
#define CURLY_BRACE_OPEN 16
#define CURLY_BRACE_CLOSE 17
#define BIG_BRACKET_OPEN 18
#define BIG_BRACKET_CLOSE 19
#define METHOD 20
#define PRINT 21
#define CONDITIONALST 22
#define PRINTER 23
#define SCANNER 24
#define EXIT_PROGRAM 25
#define LOOP 26
#define ERROR 27
#define CHAR 28
#define TEXT_TYPE 29

%}

%%

[+-]?[0-9][0-9]*                                {return INTEGER;}
[+-]?[0-9]*(\.)[0-9]+                           {return FLOAT;}
("true"|"false")                                {return BOOLEAN;}
\"([^\\\"]|\\.)*\"                              {return STRING;}
(\'.{0,1}\')                                    {return CHAR;}

   
int    |    
float  |    
boolean                                         { return DATA_TYPE;}

String |
char                                            {return TEXT_TYPE;}  
  
end                                {return EXIT_PROGRAM;}

if   |
elif |
else                                            {return CONDITIONALST;}  

for    |
while  |
foreach                                         {return LOOP;}

printer                                         {return PRINTER;} 
^scanner.*$                                     {return SCANNER;}  
                   
func |
struct                                          {return METHOD;} 
print                                           {return PRINT;}

  						
\%	|					
\+\+	|					
"--"	|
"&&"    |
"||"    |
"<"     |
"<="    |
">"     |
">="    |
"!="	|
==		|
"!"                                       {return RELATIONALOP;}

\+      | 						
-       |						
\*      | 					
\/                                               { return OPERATOR;}

[ \t\r\v\f]     ;

"\'"                                             {return SINGLE_QUOTES;}
"\,"                                             {return COMMA;}
"\;"                                             {return SEMICOLON;}
"\="                                             {return EQUALS;}
"\("                                             {return BRACKET_OPEN;}
"\)"                                             {return BRACKET_CLOSE;}
"\{"                                             {return CURLY_BRACE_OPEN;}
"\}"                                             {return CURLY_BRACE_CLOSE;}
"\["                                             {return BIG_BRACKET_OPEN;}
"\]"                                             {return BIG_BRACKET_CLOSE;}

[a-zA-Z][a-zA-Z0-9_]*                            {return VARIABLE;}
^\s*#.*$                                         {return COMMENT;}

.                                                {return ERROR;}

%%



int main(int argc, char *argv[])
{
FILE *f1;
int result;
int running=1;
while(running)
{
result =yylex();
switch(result)
{
case INTEGER: printf("INTEGER "); break;
case FLOAT: printf("FLOAT "); break;
case OPERATOR :printf("OPERATOR "); break;
case RELATIONALOP :printf("RELATIONAL_OP "); break;
case COMMENT : printf("COMMENT "); break;
case SINGLE_QUOTES :printf("SINGLEQUOTES "); break;
case COMMA : printf("COMMA "); break;
case SEMICOLON :printf("SEMICOLON "); break;
case EQUALS :printf("EQUAL "); break;
case DATA_TYPE :printf("DATATYPE "); break;
case TEXT_TYPE : printf("TEXTTYPE "); break;
case BOOLEAN :printf("BOOLEAN "); break;
case LOOP : printf("LOOP "); break;
case VARIABLE : printf("VARIABLE "); break;
case STRING : printf("STRING "); break;
case CHAR :printf("CHAR "); break;
case BRACKET_OPEN : printf("OPENBR "); break;
case BRACKET_CLOSE: printf("CLOSEBR"); break;
case CURLY_BRACE_OPEN :printf("OCURLY"); break;
case CURLY_BRACE_CLOSE: printf("CCURLY "); break;
case BIG_BRACKET_OPEN : printf("BIGBROPEN "); break;
case BIG_BRACKET_CLOSE: printf("BIGBRCLOSE "); break;
case METHOD: printf("FUNCTION "); break;
case CONDITIONALST: printf("CONDITIONAL_STAT "); break;
case PRINT: printf("PRINT "); break;
case PRINTER: {
f1=fopen(argv[1],"r");
yyin=f1;
yywrap();
}
 break;
case SCANNER:{
f1=fopen(argv[1],"w+");
yyout=f1;
fprintf(yyout,"%s",yytext);
}
 break;
case EXIT_PROGRAM: exit(1);
case ERROR: printf("UNEXPECTED CHARACHTER");
  }
 }
return 0;
}

 int yywrap(){
  return 1;
 }

