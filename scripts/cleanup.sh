#!/bin/sh

set -e

# remove the dist, coverage and build folders
echo "> removing directories..."
rm -rf ./dist/
rm -rf ./build/
rm -rf ./coverage/