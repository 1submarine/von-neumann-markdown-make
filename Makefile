all: doc

doc:
	# Create copy of source dir in doc
	rm -r doc || true
	cp -r src doc
	# Copy CSS into dir
	mkdir doc/css
	cp css/style.css doc/css
	# Copy img to dir
	cp -r img doc/
	# Copy make file and run
	cp tpl/Makefile doc
	cd doc && gmake
	# cover links
	find doc -name '*.html' -exec sed -i.bak -e 's/\.md/\//g' {} \;
	find doc -name '*.bak'  -exec rm {} +
