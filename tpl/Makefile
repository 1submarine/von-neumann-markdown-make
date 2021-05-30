CSS     := /css/style.css
TARGETS := $(subst .md,.html,$(wildcard *.md))
SUBDIRS := $(wildcard */.)

all: $(TARGETS) $(SUBDIRS)
	rm Makefile

$(SUBDIRS):
	cp Makefile $@
	cd $@ && gmake

.ONESHELL:
%.html: %.md
	if [ $@ = index.html ]; then
	pandoc -s --shift-heading-level-by=1 -c $(CSS) $< > $@ && rm $<
	else
	NAME=`echo $@ | sed 's/.html//'`
	mkdir $$NAME
	pandoc -s --shift-heading-level-by=1 -c $(CSS) $< > $$NAME/index.html && rm $<
	fi

%.md:
	touch $@
