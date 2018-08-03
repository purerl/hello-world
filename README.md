# hello-world
PureScript Erlang hello world

### Requirements

* [purerl fork of the PureScript compiler](https://github.com/purerl/purescript), available on the `PATH` as `purs`
* [psc-package](https://github.com/purescript/psc-package) - standard version, using the [purerl package set](https://github.com/purerl/package-sets)

### Build and run

Build: run `psc-package build`, or if installed, `pulp build`, or:
```shell
make
```

If you don't have `purs` on your path, or in particular if it's a mainline compiler version, you'll either need to run those commands with a temporary addition to the `PATH` (both `psc-package` and `pulp` look there for `purs`), or you may find a `Makefile` with specific path useful.

Run:
```shell
make run
```
