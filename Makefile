.PHONY: ps erl all run

all: ps erl

ps:
	psc-package build

# Alternative 1:
# psc-package sources | xargs purs compile 'src/**/*.purs'

# Alternative 2: (requires pulp and therefore node)
# pulp build

erl:
	mkdir -p ebin
	erlc -o ebin/ output/*/*.erl

run:
	@erl -pa ebin -noshell -eval '(main@ps:main())()' -eval 'init:stop()'
