perl Makefile.PL

make
make install

mkdir %PREFIX%\Scripts

cl %RECIPE_DIR%\latexml.cxx %BUILD_PREFIX%\Library\symlink-exe.c -DLATEXML=\"latexml\" -DRELATIVE_PATH -std:c++17 -EHsc -O1 -MD -Fe%PREFIX%\Scripts\latexml.exe

cl %RECIPE_DIR%\latexml.cxx %BUILD_PREFIX%\Library\symlink-exe.c -DLATEXML=\"latexmlc\" -DRELATIVE_PATH -std:c++17 -EHsc -O1 -MD -Fe%PREFIX%\Scripts\latexmlc.exe

cl %RECIPE_DIR%\latexml.cxx %BUILD_PREFIX%\Library\symlink-exe.c -DLATEXML=\"latexmlfind\" -DRELATIVE_PATH -std:c++17 -EHsc -O1 -MD -Fe%PREFIX%\Scripts\latexmlfind.exe

cl %RECIPE_DIR%\latexml.cxx %BUILD_PREFIX%\Library\symlink-exe.c -DLATEXML=\"latexmlmath\" -DRELATIVE_PATH -std:c++17 -EHsc -O1 -MD -Fe%PREFIX%\Scripts\latexmlmath.exe

cl %RECIPE_DIR%\latexml.cxx %BUILD_PREFIX%\Library\symlink-exe.c -DLATEXML=\"latexmlpost\" -DRELATIVE_PATH -std:c++17 -EHsc -O1 -MD -Fe%PREFIX%\Scripts\latexmlpost.exe
