#!/bin/sh

set -e

BIN='node_modules/.bin'

# validate all test files
( exec "./scripts/lint-tests.sh" )

# run all unit tests and watch files for changes
$BIN/mocha test/specs/**/*.ts -R spec --bail --watch