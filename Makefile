.PHONY: ps erl all test

all: ps erl

ps:
	pserlc 'bower_components/**/*.purs' 'src/**/*.purs'

erl:
	mkdir -p ebin
	erlc -o ebin/ output/*/*.erl
