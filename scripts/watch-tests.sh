#!/bin/sh

set -e

BIN='node_modules/.bin'

# run all unit tests and watch files for changes
$BIN/mocha test/specs/**/*.ts -R spec --bail --watch