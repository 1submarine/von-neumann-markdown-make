SRC := $(wildcard src/*.md)
OBJ := $(subst src,doc,$(subst .md,.html,$(SRC)))
CSS  = ../css/style.css

.PHONY: all
all: $(OBJ)

doc/%.html: src/%.md
	pandoc -s -c $(CSS) $< > $@

src/%.md:
	touch $@
