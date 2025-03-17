perl Makefile.PL

make
make install

move /y %BUILD_PREFIX%\Library\site\bin %PREFIX%\bin
