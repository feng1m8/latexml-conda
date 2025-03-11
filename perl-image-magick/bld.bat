perl Makefile.PL INC="-I%BUILD_PREFIX%\Library\ucrt64\include\ImageMagick-7" MYEXTLIB="%BUILD_PREFIX%\Library\ucrt64\bin\libMagickCore-7.Q16HDRI-10.dll" CCCDLFLAGS="-DMAGICKCORE_HDRI_ENABLE"

make
make test
make install
