#!/bin/sh

# if the tests fail, abort (errexit)
set -e

echo "> linting source files..."

# validate all source files
./node_modules/.bin/tslint -c ./tslint.json src/**/*.ts src/**/*.tsx
