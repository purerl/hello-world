.PHONY: ps erl all run

all: ps erl

ps:
	psc-package sources | xargs pserlc 'src/**/*.purs'

erl:
	mkdir -p ebin
	erlc -o ebin/ output/*/*.erl

run:
	erl -pa ebin -noshell -eval '(main:main())()' -eval 'init:stop()'
