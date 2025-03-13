perl -p -i -e "s/return 0;$/return 1;/g" Makefile.PL

perl Makefile.PL INC="-I%SRC_DIR%\mingw64\include -I%LIBRARY_PREFIX%\mingw-w64\include -I%LIBRARY_PREFIX%\mingw-w64\include\libxml2" CCCDLFLAGS="-DLIBXSLT_STATIC -DLIBEXSLT_STATIC" MYEXTLIB="%SRC_DIR%\mingw64\lib\libxslt.a %SRC_DIR%\mingw64\lib\libexslt.a %LIBRARY_PREFIX%\mingw-w64\bin\libxml2-2.dll %LIBRARY_PREFIX%\mingw-w64\bin\libssp-0.dll %LIBRARY_PREFIX%\x86_64-w64-mingw32\sysroot\usr\lib\libmsvcrt-os.a"

make
make install
