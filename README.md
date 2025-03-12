# Conda recipes for LaTeXML
[Conda](https://docs.conda.io/projects/conda/) is a powerful binary package manager that supports easy software installation and dependency management.
This repository includes [LaTeXML](http://dlmf.nist.gov/LaTeXML/) package and its dependencies (perl, imagemagick, etc), aiming to provide an out-of-the-box LaTeXML runtime environment on Windows and support developer debugging.
All packages are provided as precompiled binaries, without dependency of C compiler in user environment.

## Usage
```bat
conda install perl-latexml --channel conda-forge --channel feng1m8
```
