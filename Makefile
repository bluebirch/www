source=$(wildcard *.md)
html=$(patsubst %.md, %.html, $(source))
css=css/buttondown.css

all: $(html)

%.html: %.md $(css)
	pandoc --standalone --smart --css=$(css) \
		--from markdown --to html \
		--include-in-header=header.html \
		-o $@ $<

clean:
	rm -f $(html)
