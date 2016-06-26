#!/bin/sh

# if the tests fail, abort (errexit)
set -e

echo "> linting..."

# validate all source and test files
./node_modules/.bin/tslint -c ./tslint.json src/**/*.ts src/**/*.tsx test/**/*.ts test/**/*.tsx
