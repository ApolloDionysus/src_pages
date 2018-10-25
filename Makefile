build:
	ghc site.hs
	./site rebuild
	cd ../ApolloDionysus.github.io/ && \
	git reset --hard && \
	cp -r ../src_pages/_site/* . && \
	git add . && \
	git commit -v && \
	git push origin master

dep:
	sudo apt -y install ghc
	sudo apt -y install graphviz
	sudo apt -y install cabal
	cabal install hakyll
	cabal install pandoc
	npm install serve

run:
	serve _site/

clean:
	./site clean
	rm site.hi
	rm site.o
	rm site
