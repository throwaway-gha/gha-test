gha-test
========

this repository demonstrates a class of vulnerabilities in github actions
involving the `pull_request_target` trigger.

for more on this vulnerability, check out the [youtube video] I did on this.

In this repository there are two vulnerable workflows:

- [.github/workflows/ctf1.yml](.github/workflows/ctf1.yml)
    - easy to acquire `secrets.EXAMPLE_SECRET` directly
- [.github/workflows/ctf2.yml](.github/workflows/ctf2.yml)
    - acquire `secrets.EXAMPLE_SECRET` indirectly through `$GITHUB_ENV` and
      `NODE_OPTIONS`

It is also possible to acquire a read/write repository token from both of
those workflows, this is left as an exercise to the reader.

If you want to play around with this repository, fork it and submit PRs to
your own copy.  It is suggested to archive it when you're done as the
repository will be vulnerable to exploits similar to those demonstrated
above.

For more on this vulnerability:

- [github's blog post about it](https://securitylab.github.com/research/github-actions-preventing-pwn-requests)
- [google's project zero about a related vulnerability](https://bugs.chromium.org/p/project-zero/issues/detail?id=2070)

and lastly, you can support me through [github sponsors]

[youtube video]: https://youtu.be/_fpXyS_i1xE
[github sponsors]: https://github.com/sponsors/asottile
