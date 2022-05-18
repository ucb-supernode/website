.PHONY: build deploy

build:
	jekyll build --incremental

deploy: build
	rsync -a --delete _site/ supernode.berkeley.edu:/var/www/html/
