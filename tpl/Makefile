HEADER  := $(ROOT)/tpl/header.html
FOOTER  := $(ROOT)/tpl/footer.html
CSS     := $(shell realpath --relative-to=$(PWD) $(ROOT))/css/style.css

CC      := pandoc
FLAGS   := -s --shift-heading-level-by=1 -c $(CSS) --include-before-body=$(HEADER) --include-after-body=$(FOOTER)

TARGETS := $(subst .md,.html,$(wildcard *.md))
SUBDIRS := $(wildcard */.)


all: $(TARGETS) $(SUBDIRS)
	rm Makefile

$(SUBDIRS):
	cp Makefile $@
	cd $@ && gmake

.ONESHELL:
%.html: %.md
	@if [ $@ = index.html ]; then
	$(CC) $(FLAGS) $< > $@ && rm $<
	else
	NAME=`echo $@ | sed 's/.html//'`
	mkdir $$NAME
	$(CC) $(FLAGS) $< > $$NAME/index.html && rm $<
	fi

%.md:
	touch $@
