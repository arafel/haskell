#ghc -o problems_1to10 problems_1to10.hs
#./problems_1to10	
problems: problems_1to10.hs
	@runhaskell problems_1to10.hs

baby: baby.hs
	ghc -o baby baby.hs

unzip: unzip.hs
	ghc -o unzip -main-is Unzip unzip.hs

clean:
	$(RM) baby unzip *.o *.hi

run: baby
	./baby
