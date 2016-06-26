#!/bin/sh

# if the tests fail, abort (errexit)
set -e

BIN='node_modules/.bin'

# validate and run all unit tests
$BIN/tslint -c ./tslint.json test/specs/**/*.ts test/specs/**/*.tsx

# run Mocha tests on node.js
echo "> running tests..."
$BIN/mocha test/specs/**/*.ts -R spec --bail


