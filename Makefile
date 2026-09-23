YOKER_FROM=../../yoker
-include ~/.yoker/Makefile

# website targets

install:
	bundle install

site: update serve

update:
	bundle update

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve
