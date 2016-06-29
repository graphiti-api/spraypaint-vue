## Changelog

# 0.4.3

- Enabled dead code elimination when transpiling with TypeScript

# 0.4.2

- JSDOM is now optional. Standard tests are running without JSDOM. `npm run test:jsd` runs the tests with `JSDom` 

# 0.4.0

- improved JSDom configuration
- tests can now be in sub-directories
- jsx / tsx supported in tests
- improved `∼./test/mocha.opts` configuration

# 0.3.6

- solved issue where Mocha watch task wasn't working

# 0.3.5

- fixed script issue

# 0.3.3

- fixed issue with the release script

# 0.3.2

- fixed mocha configuration

# 0.2.13

- updated readme

#  0.2.11

- rolled back Node.js check in Travis.
- improved command scripts

#  0.2.8

- unit testing now support both`.ts` and `.tsx` files

#  0.2.7

- only delete dist folder on build.
- improved perf

#  0.2.4

- put a blocker for node.js version older then 5.x. The script will stop.
- moved coverage report commands to the after.sh file.

#  0.2.3

- updated readme

# 0.2.2

- updated readme

# 0.2.1

- Simplified CI support

# 0.2.0

- refactored Rollup bundling
- cleanup
- updated NPM packages

# 0.1.7

- added prepublish script
- cleanup

# 0.1.5

- simplified Rollup bundling

# 0.1.4

- added Sinon support with examples

# 0.1.2

- fixed so the library name are taken from package.json

# 0.1.1

- simplified Rollup configuration
- reduced the dependency tree
- speeding up build process
- cleanup

# 0.0.5

- added release script
- updated readme

# 0.0.1
- first release