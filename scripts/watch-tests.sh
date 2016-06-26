#!/bin/sh

set -ex pipefail

# run all unit tests and watch files for changes
$(npm bin)/mocha test/specs/**/*.ts -R spec --bail --watch