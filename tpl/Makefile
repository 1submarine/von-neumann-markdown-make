CSS      = /css/style.css
TARGETS  = $(subst .md,.html,$(wildcard *.md))
SUBDIRS := $(wildcard */.)

all: $(TARGETS) $(SUBDIRS)

$(SUBDIRS):
	cp /Users/renzo/Documents/fiction/spinward_reaches/wiki/tpl/Makefile $@
	cd $@ && $(MAKE)
	rm $@/Makefile

%.html: %.md
	pandoc -s --shift-heading-level-by=1 -c $(CSS) $< > $@ && rm $<

%.md:
	touch $@
