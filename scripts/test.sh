#!/bin/sh

# if the tests fail, abort (errexit)
set -e

# validate all source and test files
( exec "./scripts/lint.sh" )

# run Mocha tests on node.js
echo "> running tests..."
./node_modules/.bin/mocha test/specs/**/*.ts -R spec --bail


