# Conda recipes for LaTeXML
[Conda](https://docs.conda.io/projects/conda/) is a powerful binary package manager that supports easy software installation and dependency management.
This repository includes [LaTeXML](http://dlmf.nist.gov/LaTeXML/) package and its dependencies (perl, imagemagick, etc), aiming to provide an out-of-the-box LaTeXML runtime environment on Windows and support developer debugging.
All packages are provided as precompiled binaries, without dependency of C compiler in user environment.

## Usage
Following the instructions in the [official conda documentation](https://docs.conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html), run
```bat
conda create -n latexml
```
to create a conda environment named **latexml**.
After the environment is created, you can enter it by running
```bat
conda activate latexml
```
Then, the LaTeXML package can be installed by running
```bat
conda install perl-latexml --channel conda-forge --channel feng1m8
```
