baby: baby.hs
	ghc -o baby baby.hs

unzip: unzip.hs
	ghc -o unzip -main-is Unzip unzip.hs

clean:
	$(RM) baby unzip *.o *.hi

run: baby
	./baby
