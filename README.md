Homebrew-alt
============
This repository contains "unofficial" formulae for [Homebrew](https://github.com/mxcl/homebrew). 

These are some largely unstable, poorly tested scripts I use for myself and that may be 
useful for others. Some of these packages may require other Taps. Always run 
`brew info <formula>` before install.

Installing Homebrew-alt Formulae
--------------------------------
Just `brew tap orpiske/alt`.

To install a formula and then `brew install <formula>`.

If it conflicts, you can run `brew install orpiske/alt/<formula>`.

You can also install via URL:

```
brew install https://raw.github.com/orpiske/homebrew-alt/master/<directory>/<formula>.rb
```

Relevant Information about packages
----

* **submarine** This package requires newer versions of autoconf and automake than those provided by Apple. 
Run `brew info submarine` for details.

Docs
----
`brew help`, `man brew`, or the Homebrew [site](https://github.com/mxcl/homebrew).

* [homebrew-dupes](https://github.com/Homebrew/homebrew-dupes)
* [homebrew-versions](https://github.com/Homebrew/homebrew-versions)
* [homebrew-boneyard](https://github.com/Homebrew/homebrew-boneyard)
