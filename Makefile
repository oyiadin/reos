all: init css html xml clean

init:
	mkdir template/

css:
	sass -t compressed static/main.scss template/main.css
	sass -t compressed static/base.scss template/base.css
	sass -t compressed static/pygments_style.scss template/pygments_style.css
	cp static/readme.txt template/readme.txt

html:
	cp page/* template/

xml:
	cp page/sitemap.html template/
	cp page/feed.html template/

clean:
	rm -rf .sass-cache/
	rm -rf static/.sass-cache/
	rm -rf template/
