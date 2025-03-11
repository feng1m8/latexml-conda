perl Makefile.PL INC="-I%LIBRARY_PREFIX%\mingw-w64\include -I%LIBRARY_PREFIX%\mingw-w64\include\libxml2" MYEXTLIB="%LIBRARY_PREFIX%\mingw-w64\bin\libxml2-2.dll" CCCDLFLAGS="-Wno-error=incompatible-pointer-types"

make
make test
make install
