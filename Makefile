export ROOT := $(PWD)
all: doc

doc:
	# Create copy of source dir in doc
	rm -r doc
	cp -r src doc
	cp style.css doc
	# Copy make file and run
	cp tpl/Makefile doc
	cd doc && $(MAKE)
