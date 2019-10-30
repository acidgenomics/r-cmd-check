# R check

Scripts for Dockerized continuous integration tests.

Currently designed for use primarily with [Travis CI][].

Special globals:

- `RCHECK_SKIP_UPDATE`=1: Skip dependency update step.
- `RCHECK_KEEP_IT_100`=1: Enforce 100% code coverage.

[travis ci]: https://travis-ci.com/
