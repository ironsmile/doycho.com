all:
	bundle exec jekyll build

deploy:
	rsync -r ./_site/ iron40@s.doycho.com:/var/www/doycho.com/public

