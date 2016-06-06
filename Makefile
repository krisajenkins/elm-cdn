all: dist/tests.js

dist:
	@mkdir $@

dist/tests.js: FORCE $(shell find src test -type f -name '*.elm' -o -name '*.js')
	elm-make --yes --warn
	elm-make test/Test.elm --yes --warn --output=$@
	node $@

FORCE:
