all: clean_dir css html xml clean

css:
	sass -t compressed static/main.scss template/main.css
	sass -t compressed static/base.scss template/base.css
	sass -t compressed static/pygments_style.scss template/pygments_style.css
	cp static/readme.txt template/readme.txt

html:
	python compress_html.py
	rm page/compressed/404.html
	cp page/404.html template/
	mv page/compressed/* template/
	rm -rf page/compressed

xml:
	cp page/sitemap.html template/
	cp page/feed.html template/

clean_dir:
	rm -rf template/
	mkdir template

clean:
	rm -rf .sass-cache/
	rm -rf static/.sass-cache/

