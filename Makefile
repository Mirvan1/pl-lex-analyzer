nl: start.l
	lex start.l

run:lex.yy.c
	cc lex.yy.c -lfl

printer: 
	./a.out exampleprog1.nl

scanner:
	./a.out filename

clean:
	rm newlanguage.l
	rm lex.yy.c



