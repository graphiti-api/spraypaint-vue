## Changelog

# v.0.2.0

- speeding up shell scripting
- improved performance
- updated dependencies

# v.0.1.8

- fixed a couple of bugs

# v.0.1.7

- simplified workflow
- fixed server issue

# v.0.1.5

- improved the shell script files
- fixed a few bugs

# v. 0.1.4

- cleanup
- removed dependencies

# v. 0.1.3

- removed `Buble` compiler
- renamed `coveralls` to `coverage` for triggering the coverage report
- renamed `coveralls.sh` to `coverage.sh`

# v. 0.1.1

- fixed so Rollup will do tree-shaking and TypeScript only transpile down to ES6, to
  keep the code clean and get a nice looking bundle

# v. 0.1.0

- reduced the dependency tree
- activated global variable leak detection for Mocha
- renamed `test/client` folder to `test/specs`

# v. 0.12

- refactored the build folder concept
- fixed issues where build and prod distro was build as stand-alone

# v. 0.11

- fixed coverage reporter - lcov + HTML + text

# v. 0.10

- added code elimination with TypeScript
- imrpoved Istanbul coverage reports
- added mssing sourceMaps for coverage reports
- refactored `coveralls.sh`

# v. 0.0.6

- fixed Circle CI so it also send reports to coveralls.io
- updated readme

# v. 0.0.5

- refactored shell commands
- added a "hackish" Istanbul solution (*still Alpha stage*)
- connected with coveralls.io, and the reports are delivered there
- updated readme badges