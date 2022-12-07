# ECHIDNA-TEST

This repo has sample contracts for echidna and slither

## Requirements

This repo recommends [Node.js](https://nodejs.org/) v16.0.0+ to run.
Install the echidna and slither.
See [Slither](https://github.com/crytic/slither), [Echidna](https://github.com/crytic/echidna).

```shell
npm install
npx hardhat coverage
```

```shell
echidna-test . --contract FooFuzzing --config ./contracts/fuzzing/FooFuzzing.config.yaml
slither ./contracts/Foo.sol
```