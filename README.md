# R check

Scripts for Dockerized continuous integration tests.

Currently designed for use primarily with [Travis CI][].

Special globals:

- `RCHECK_KEEP_IT_100=1`: Enforce 100% code coverage.
- `RCHECK_SKIP_UPDATE=1`: Skip dependency update step.

[travis ci]: https://travis-ci.com/
