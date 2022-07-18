
serve:
	bundle exec -- jekyll serve --host 0.0.0.0

build:
	bundle exec -- jekyll build

install: build
	# scp -r _site/* plum.tunbury.org:/var/www/inventory
