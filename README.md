# Rachelle

[![Build Status](https://travis-ci.org/Kflash/rachelle.svg?branch=master)](https://travis-ci.org/Kflash/rachelle)
[![CircleCI](https://circleci.com/gh/Kflash/rachelle.svg?style=svg)](https://circleci.com/gh/Kflash/rachelle)
[![Coverage Status](https://coveralls.io/repos/github/Kflash/rachelle/badge.svg?branch=master)](https://coveralls.io/github/Kflash/rachelle?branch=master)
[![npm version](https://badge.fury.io/js/rachelle.svg)](https://badge.fury.io/js/rachelle)
[![npm](https://img.shields.io/npm/l/express.svg?style=flat-square)](https://github.com/kflash/rachelle/blob/master/LICENSE.md)

> Fast, and lightweight TypeScript 2.0 boilerplate that export a single file. Tests in Mocha, Chai & Sinon. TSLint for better code quality.

## Features

- [x] Statically typed build system for working with [Typescript](https://www.typescriptlang.org/) 2.0 Pre
- [x] Allow dead code elimination
- [x] TSLint for code validation
- [x] Easy debugging
- [x] [Rollup](http://rollupjs.org/) for bundling
- [x] [Bublé](https://gitlab.com/Rich-Harris/buble) as the ES2015 compiler
- [x] [Sinon](http://sinonjs.org/) for test doubles
- [x] [Mocha](https://mochajs.org/) & [Chai](http://chaijs.com/) de facto standard

## Workflow

- `build` - transpile TypeScript down to ES5 and builds a bundle both for development and production
- `build:dev`  - transpile TypeScript down to ES5 and builds a bundle for development
- `build:prod` - transpile TypeScript down to ES5 and builds a bundle for production
- `coverage` - shows the coverage report
- `cleanup` - remove the dist, coverage and build folders
- `test` - run all unit tests
- `lint` - validates all source and test files
- `watch:tests` - run all unit tests and watch files for changes
- `watch:build` - watch your TypeScript files and trigger recompilation on changes
- `update:dependencies` - update npm packages

## Shell commands

All commands can be run with `sh`. The script files are located inside the `./scripts` folder, and shared between
the `CI` and `NPM`.

## Continuous integration (CI)

`Travis` and `Circle` are both supported. `Travis` is configured to work with `Linux` and `iOS`

## Coverage reports

The coverage reports are generated with `Istanbul`, and delivered to `coveralls.io`.

Istanbul generate a 100% correct coverage report. See the source and test files and do a comparison.
