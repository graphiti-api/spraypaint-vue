# Contributing to Rachelle

Pull requests are very welcome, but should be within the scope of the project, and follow the repository's code conventions. Before submitting a
pull request, it's always good to file an issue, so we can discuss the details of the PR.

## Found an issue?

If you find a bug in the source code or a mistake in the documentation, you can help us by submitting an issue after going through this steps:

1. Ensure you've replicated the issue against master. There is a chance the issue may have already been fixed.

2. Search for any similar issues (both opened and closed). There is a chance someone may have reported it already.

3. Provide a demo of the bug isolated in a jsfiddle/jsbin. Sometimes this is not a possibility, in which case provide a detailed description along
   with any code snippets that would help in triaging the issue. If we cannot reproduce it, we will close it.

4. The best way to demonstrate a bug is to build a failing test. This is not required, however, it will generally speed up the development process.

## Want a feature?

You can request a new feature by submitting an issue . If you would like to implement a new feature then consider what kind of change it is:

**Major Changes** that you wish to contribute to the project should be discussed first on our dev mailing list or IRC so that we can better coordinate our efforts, prevent duplication of work, and help you to craft the change so that it is successfully accepted into the project.
**Small Changes** can be crafted and submitted to the GitHub Repository as a Pull Request.

*Please see the Pull Requests below.*

## Pull Requests

1. At Rachelle, we have a single Rachelle Open Source Contributor License Agreement that we ask contributors to electronically sign before merging in their
Pull Requests. Here's the CLA's human-readable summary:

> You are saying that you have the right to give us this code, which is either your own code, or code that your company allows you to publish.
> You want to give us this code. We may decide to use this code. You are not going to sue people who use this code, because, after all,
> you are giving it to an open source project! And if you include code that you didn't write, you'll tell us about it by including the open
> source license to such code in your contribution so we'll know about it. You are not promising that this code works well, or that you
> will support it, and we're OK with that.

2. [Fork](https://github.com/kflash/rachelle/fork/) the repository and create your branch from master.

3. Ensure that all tests are passing prior to submitting.

4. If you are adding new functionality, or fixing a bug, provide test coverage.

5. Ensure the test suite passes

6. Make sure your code lints - we've done our best to make sure these rules match our internal linting guidelines.

7. If you've changed APIs, update the documentation.

8. Follow syntax guidelines detailed below.

9. Push the changes to your fork and submit a pull request. If this resolves any issues, please mark in the body resolve #ID within the body of your pull request.
   This allows for github to automatically close the related issue once the pull request is merged.

10. Last step, submit the pull request!

## Style Guide

Our linter will catch most styling issues that may exist in your code. You can check the status of your code styling by simply running: `npm run lint`

However, there are still some styles that the linter cannot pick up. If you are unsure about something, looking at [Airbnb's Style Guide](https://github.com/airbnb/javascript)
will guide you in the right direction.

### Code Conventions

* Use semicolons ;
* 2 spaces for indentation (no tabs)
* Prefer ' over "
* 80 character line length
* Write "attractive" code
* Do not use the optional parameters of setTimeout and setInterval
* Documentation
* Comments
* Unit tests

### Documentation

* Do not wrap lines at 80 characters

## License

By contributing to Rachelle, you agree that your contributions will be licensed under its MIT license.