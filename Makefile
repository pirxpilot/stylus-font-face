all: lint check

lint:
	jshint lib

check:
	stylus --use ./lib/plugin.js test/main.styl

.PHONY: all lint check

