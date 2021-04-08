all:
	bundle exec jekyll build

deploy:
	rsync -r ./_site/ iron40@s.doycho.com:/var/www/doycho.com/public

serve:
	bundle exec jekyll serve -l -o --livereload-port 4002 --port 4001 --drafts
