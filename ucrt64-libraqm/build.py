import os
import shutil
from pathlib import Path
from delvewheel import _dll_utils as dll_utils


src = Path(os.getenv('SRC_DIR'))
library = Path(os.getenv('LIBRARY_PREFIX'))

shutil.copytree(src / 'ucrt64', library / 'ucrt64')

dll_utils.replace_needed(
    library / 'ucrt64' / 'bin' / 'libraqm-0.dll',
    ['libfreetype-6.dll', 'libfribidi-0.dll', 'libharfbuzz-0.dll'],
    {
        'libfreetype-6.dll': 'freetype.dll',
        'libfribidi-0.dll': 'fribidi-0.dll',
        'libharfbuzz-0.dll': 'harfbuzz.dll',
    },
    strip=False,
    verbose=2,
    test=[],
)
