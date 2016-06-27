# Rachelle

[![Build Status](https://travis-ci.org/Kflash/rachelle.svg?branch=master)](https://travis-ci.org/Kflash/rachelle)
[![CircleCI](https://circleci.com/gh/Kflash/rachelle.svg?style=svg)](https://circleci.com/gh/Kflash/rachelle)
[![Coverage Status](https://coveralls.io/repos/github/Kflash/rachelle/badge.svg?branch=master)](https://coveralls.io/github/Kflash/rachelle?branch=master)
[![codecov](https://codecov.io/gh/Kflash/rachelle/branch/master/graph/badge.svg)](https://codecov.io/gh/Kflash/rachelle)
[![npm version](https://badge.fury.io/js/rachelle.svg)](https://badge.fury.io/js/rachelle)
[![npm](https://img.shields.io/npm/l/express.svg?style=flat-square)](https://github.com/kflash/rachelle/blob/master/LICENSE.md)

> Fast, and lightweight TypeScript 2.0 boilerplate that export a single file. Tests in Mocha, Chai & Sinon. TSLint for better code quality.

## Features

- [x] Statically typed build system for working with [Typescript](https://www.typescriptlang.org/) 2.0 Pre
- [x] Consistent code style with [TSLint](https://palantir.github.io/tslint/).
- [x] Coverage report with [Istanbul](https://github.com/gotwarlost/istanbul)
- [x] [Rollup](http://rollupjs.org/) for bundling
- [x] [Bublé](https://gitlab.com/Rich-Harris/buble) as the ES2015 compiler
- [x] [Sinon](http://sinonjs.org/) for test doubles
- [x] [Mocha](https://mochajs.org/) & [Chai](http://chaijs.com/) de facto standard
- [x] Environment variabels
- [x] Easy debugging

## Workflow

- `build` - transpile TypeScript down to ES5 and builds a bundle both for development and production
- `build:dev`  - transpile TypeScript down to ES5 and builds a bundle for development
- `build:prod` - transpile TypeScript down to ES5 and builds a bundle for production
- `coverage` - shows the coverage report
- `cleanup` - remove the dist, coverage and build folders
- `test` - run all unit tests
- `lint` - validates all source and test files
- `lint-src` - validates all source files
- `lint-tests` - validates all test files
- `release` - build the library, push to NPM and Github
- `watch:tests` - run all unit tests and watch files for changes
- `watch:build` - watch your TypeScript files and trigger recompilation on changes
- `update:dependencies` - update npm packages

## Shell commands

All commands can be run with `sh`. The script files are located inside the `./scripts` folder, and shared between
the `CI` and `NPM`.

## Continuous integration (CI)

Both `Travis CI` and `Circle CI` are supported.

## Coverage reports

The coverage reports are generated with `Istanbul`, and delivered to `coveralls.io` and `codecov` by `Travis CI`.

Istanbul generate a 100% correct coverage report. See the source and test files and do a comparison.

## FAQ

#### Why is there a difference in code coverage between Coveralls.io and Codecov?

Actually there is no difference, but `Coveralls.io` seems to have an issue. Click on the `Coveralls` avatar and you will see the correct result. Or you can look at this readme on the NPM repo and it also show the correct results.

#### How to use this boilerplate with Karma?

NPM install the Karma package and type `karma init` on the command line. The test files are pre-transpilled by TypeScript and located here `build/test/specs/**/*.js`.
Install a Karma preprocessor, and the NPM packages you may need.
