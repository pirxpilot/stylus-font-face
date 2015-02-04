all: lint check

lint:
	jshint lib

check:
	stylus --use ./lib/plugin.js --with {limit:80000} test/main.styl

.PHONY: all lint check

