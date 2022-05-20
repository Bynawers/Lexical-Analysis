LDFLAGS="-L/usr/local/opt/flex/lib"

.SECONDARY:

demo: compter_mot.run
	./compter_mot.run < fichier.txt


%.yy.c: %.lex
	flex -o $@ $^

%.run: %.yy.c
	gcc -o $@ $^ ${LDFLAGS} -lfl


clean:
	rm -f *.run
	rm -f *.yy.c
	ls -l


LADIR="Analyse_Lexicale"

zip:
	rm -rf ${LADIR}
	mkdir ${LADIR}
	cp Makefile Arsene_Lupin.txt compter_mot.lex ${LADIR}
	zip -r ${LADIR}.zip ${LADIR}
	rm -rf ${LADIR}
	ls -l
