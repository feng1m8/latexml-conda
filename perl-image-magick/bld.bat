perl Makefile.PL INC="-I%LIBRARY_PREFIX%\ucrt64\include\ImageMagick-7" MYEXTLIB="%LIBRARY_PREFIX%\ucrt64\bin\libMagickCore-7.Q16HDRI-10.dll" CCCDLFLAGS="-DMAGICKCORE_HDRI_ENABLE"

make
make install
