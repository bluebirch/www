source=$(wildcard *.md)
html=$(patsubst %.md, %.html, $(source))
css=https://raw.githubusercontent.com/bluebirch/bluebirch.github.io/master/templates/pandoc-cv.css

all: $(html)

%.html: %.md
	pandoc --standalone --smart --css=$(css) \
		--from markdown --to html \
		--include-in-header=header.html \
		-o $@ $<

clean:
	rm -f $(html)
