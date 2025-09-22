perl -p -i -e "s/return 0;$/return 1;/g" Makefile.PL

perl Makefile.PL INC="-I%LIBRARY_PREFIX%\mingw64\include -I%LIBRARY_PREFIX%\mingw-w64\include -I%LIBRARY_PREFIX%\mingw-w64\include\libxml2" CCCDLFLAGS="-DLIBXSLT_STATIC -DLIBEXSLT_STATIC -DLIBXML_STATIC" MYEXTLIB="%LIBRARY_PREFIX%\mingw64\lib\libxslt.a %LIBRARY_PREFIX%\mingw64\lib\libexslt.a %LIBRARY_PREFIX%\mingw-w64\lib\libxml2.a %LIBRARY_PREFIX%\mingw-w64\lib\libiconv.a %LIBRARY_PREFIX%\mingw-w64\lib\libz.a %LIBRARY_PREFIX%\mingw-w64\lib\liblzma.a %BUILD_PREFIX%\Library\mingw-w64\lib\gcc\x86_64-w64-mingw32\5.3.0\libssp.a %LIBRARY_PREFIX%\x86_64-w64-mingw32\sysroot\usr\lib\libmsvcrt-os.a"

make
make install
