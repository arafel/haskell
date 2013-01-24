baby:	baby.hs
	ghc -o baby baby.hs

clean:
	$(RM) baby baby.o baby.hi

run: baby
	./baby
