.PHONY: ps erl all run

all: ps erl

ps:
	psc-package sources | xargs purs compile 'src/**/*.purs'

erl:
	mkdir -p ebin
	erlc -o ebin/ output/*/*.erl

run:
	erl -pa ebin -noshell -eval '(main@ps:main@c())()' -eval 'init:stop()'
