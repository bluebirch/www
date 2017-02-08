include Makefile.global

src=$(wildcard *.md)
dst=$(patsubst %.md,public_html/%.html,$(src))
css=buttondown.css


public_html: $(dst)
	@echo done

public_html/%.html: %.md
	pandoc --smart --standalone --self-contained --css=$(css)\
        -o $@ $<

publish: default
	rsync -av public_html skalman@shaka.acc.umu.se:
