                   PROGRAMMING LANGUAGE START

Member: Mirvan SADIGLI

Syntax 

 <prog>::= <stmt>|<stmts>

 <stmts>::= <stmts> <stmt>|<stmt>

 <stmt>::=  <nonblock_stmt>|<block_stmt>|<single_stmt>

 <nonblock_stmt>::=  <types>|<expr>

 <types>::= <datatypes>|<text_type>

 <datatype>::= <int>|<float> <boolean>

 <text_type>:: = <String>|<char>

 <expr>::= <assign_expr>

 <assign_expr>::= <lefthand_side> <relational_op> <assign_expr>|
 <lefthand_side> <op> <assign_expr>
 <block_stmt>:: = <conditional_stmt> | <loop_stmt> | <method_stmt>

 <conditional_stmt>::=<if_cond_exp> |<elif_cond_exp> |<else_cond_exp>

 <if_cond_exp>::= if (<cond_op>) <body> 

 <elif_cond_exp>::=elif(<cond_op) <body>

 <else_cond_exp>::= else <body>

 <loop_stmt>::= <for_stmt> | <while_stmt> | <foreach_stmt>

 <for_stmt>::= for( <expr> ; <expr> ; <expr>)  <body>

 <while_stmt>::= while(<expr>)  <body>

 <foreach_stmt>::= foreach(<expr> : expr)  <body>

 <method_stmt>::=  <method_mod>  <body>

 <method_mod>::= func( <nonblock_stmt> ) <body> | struct <body>

 <body>::= { <stmt> ? }

 <single_stmt>:= <printer_stmt> | <scanner_stmt> | <comment>|
 <exit_program>

 <printer_stmt>::= printer

 <scanner_stmt>::= scanner

 <comment>::= #

 <exit_program>::= end

 <int>::= <int> <op> <int> | <int> <relational_op> <int>? | <digit>

 <float>::= <float> <op> <float> | <float> <relational_op> <floatt>? | <int>.<digit>

 <boolean>::= true | false 

 <String>::=<letter> | <digit> | <symbol>

 <char>::=<charachter>

 <charachter>::=<letter> | <digit> | <symbol>

 <cond_op>::=<expr> && <expr> | <expr> || <expr> 

 <relational_op> ::= ++ |-- |< | <= | > | >= | != | ==

 <symbol>::=  ' | " | , |; | = | ( | ) | { | } | [ | ]

 <op>::= + | - | * | / | =

 <digit> ::=0 | 1 |....| 9

 <letter> ::= a | b ...| z | A | B ...| Z |






Explanations about the language

This interpreter is a new programming language which is a functional programming language. The programming language name is START.As seen in the name, it is suitable for those just starting the learning programming.It is useful for those who are interested in software and do not know where to start.These people should start with START to learning programming.It can be also used scientific calculator using a programming language. This language is easy to understand for beginners. It means that readability and writability is ease. It could be said that syntax is similar to Java and functionally similar to MATLAB. The programs are written here come with the .nl extension.
There are 3 types of statements. The first one is "single statements" which need only a single word to run (e.g printer).  Second is non-block statements that do not need to body to execute (e.g integer). The last one is block statements that have a body to execute (e.g conditional statements).As shown above, there are two types in the NL. These are data type and text type. The datatype is an integer, floating numbers and boolean. Text type is String and char. As with most programming languages, curly braces should be used for the body.
This software language can read via the input file. For this, it is necessary to write "make print" in the "Makefile" and the name of the file you want to print.Then, you HAVE to write "printer" in the terminal. Finally, the input file can be shown here. NL also provides you to print the text you want to the file. You can do this by using the "make scanner" command. By the way, you do not need to create the file before. To do this, you can write the "scanner" in the program and then write the word what you want in ONE line. Using the program I provided as an example, you can run with makefile.For this, you can run it by typing "make run"and "make nl" command in the terminal. You can use make clean command to delete the NL. You can do it with "end" to stop the program.
