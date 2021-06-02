HEADER  := $(ROOT)/tpl/header.html
FOOTER  := $(ROOT)/tpl/footer.html
CSS     := /style.css

CC      := pandoc
CCFLAGS := --standalone --shift-heading-level-by=1 --css=$(CSS) --include-before-body=$(HEADER) --include-after-body=$(FOOTER) --preserve-tabs --template=$(ROOT)/tpl/template.html

LI      := tidy
LIFLAGS := -asxhtml -i --indent-with-tabs yes --quiet yes -w 80 --tidy-mark no -m

TARGETS := $(subst index,,$(subst .md,,$(wildcard *.md)))
SUBDIRS := $(wildcard */.)

all: $(TARGETS) $(SUBDIRS) index.html
	rm Makefile

$(SUBDIRS):
	cp Makefile $@
	cd $@ && $(MAKE)

$(TARGETS):
	mkdir $@
	$(CC) $(CCFLAGS) $@.md > $@/index.html
	$(LI) $(LIFLAGS) $@/index.html
	cd $@ && sed -i.bak 's/\.md/\//g' *.html && rm *.bak
	rm $@.md

index.html:
	$(CC) $(CCFLAGS) index.md > $@
	$(LI) $(LIFLAGS) index.html
	sed -i.bak 's/\.md/\//g' *.html
	rm *.bak index.md
