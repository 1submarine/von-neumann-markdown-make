CSS = /Users/renzo/Documents/fiction/spinward_reaches/wiki/css/style.css
%.html: %.md
	pandoc -s --shift-heading-level-by=1 -c $(CSS) $< > $@

%.md:
	touch $@
