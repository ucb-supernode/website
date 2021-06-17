.PHONY: build deploy

build:
	jekyll build --incremental

deploy: build
	rsync -a --delete _site/ deploy@supernode.berkeley.edu:/var/www/site/
