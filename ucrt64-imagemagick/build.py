import os
import shutil
from pathlib import Path
from delvewheel import _dll_utils as dll_utils


src = Path(os.getenv('SRC_DIR'))
library = Path(os.getenv('LIBRARY_PREFIX'))

shutil.copytree(src / 'ucrt64', library / 'ucrt64')

for i in (library / 'ucrt64').rglob('*.dll'):
    dll_utils.replace_needed(
        i,
        ['libbz2-1.dll', 'libfftw3-3.dll', 'libfontconfig-1.dll', 'libfreetype-6.dll', 'libintl-8.dll', 'liblcms2-2.dll', 'libxml2-2.dll', 'zlib1.dll', 'libpng16-16.dll'],
        {
            'libbz2-1.dll': 'libbz2.dll',
            'libfftw3-3.dll': 'fftw3.dll',
            'libfontconfig-1.dll': 'fontconfig-1.dll',
            'libfreetype-6.dll': 'freetype.dll',
            'libintl-8.dll': 'intl-8.dll',
            'liblcms2-2.dll': 'lcms2.dll',
            'libxml2-2.dll': 'libxml2.dll',
            'zlib1.dll': 'zlib.dll',
            'libpng16-16.dll': 'libpng16.dll',
        },
        strip=False,
        verbose=2,
        test=[],
    )

txt = Path(library / 'ucrt64' / 'etc' / 'ImageMagick-7' / 'delegates.xml')
txt.write_text(txt.read_text().replace('gswin32c', 'gswin64c'))
