.PHONY: build deploy

build:
	bundle exec jekyll build

deploy: build
	rsync -a --delete _site/ supernode.berkeley.edu:/var/www/html/
