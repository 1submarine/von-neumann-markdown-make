CSS = /Users/renzo/Documents/fiction/spinward_reaches/wiki/css/style.css
TARGETS = $(subst .md,.html,$(wildcard *.md))
all: $(TARGETS)

%.html: %.md
	pandoc -s --shift-heading-level-by=1 -c $(CSS) $< > $@ && rm $<

%.md:
	touch $@
