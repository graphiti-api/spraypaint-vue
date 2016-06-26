#!/bin/sh

# if the tests fail, abort (errexit)
set -e

echo "> linting test files..."

# validate all source and test files
./node_modules/.bin/tslint -c ./tslint.json test/specs/**/*.ts test/specs/**/*.tsx
