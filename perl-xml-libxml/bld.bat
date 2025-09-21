perl Makefile.PL INC="-I%LIBRARY_PREFIX%\mingw-w64\include -I%LIBRARY_PREFIX%\mingw-w64\include\libxml2" MYEXTLIB="%LIBRARY_PREFIX%\mingw-w64\lib\libxml2.a %LIBRARY_PREFIX%\mingw-w64\lib\libiconv.a %LIBRARY_PREFIX%\mingw-w64\lib\libz.a %LIBRARY_PREFIX%\mingw-w64\lib\liblzma.a" CCCDLFLAGS="-DLIBXML_STATIC -Wno-error=incompatible-pointer-types"

make
make test
make install
