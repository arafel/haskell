baby:	baby.hs
	ghc -o baby baby.hs

clean:
	$(RM) baby *.o *.hi

run: baby
	./baby
