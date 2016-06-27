#!/bin/sh

set -e

BIN='node_modules/.bin'

# run unit tests
( exec "./scripts/test.sh" )

# build
( exec "./scripts/build.sh" )
