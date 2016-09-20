# .gitignore is ignoring other directories with the same name

From the [docs](https://www.kernel.org/pub/software/scm/git/docs/gitignore.html) for Git Ignore

A leading slash matches the beginning of the pathname. 

For example, `/*.c` matches `cat-file.c` but not `mozilla-sha1/sha1.c`.

Try changing `vendor/` to `/vendor/`
