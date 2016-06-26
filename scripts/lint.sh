#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN='node_modules/.bin'

echo "> linting..."

# validate all source and test files
$BIN/tslint -c ./tslint.json src/**/*.ts src/**/*.tsx test/**/*.ts test/**/*.tsx
