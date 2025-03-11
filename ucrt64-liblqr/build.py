import os
import shutil
from pathlib import Path
from delvewheel import _dll_utils as dll_utils


src = Path(os.getenv('SRC_DIR'))
library = Path(os.getenv('LIBRARY_PREFIX'))

shutil.copytree(src / 'ucrt64', library / 'ucrt64')

dll_utils.replace_needed(
    library / 'ucrt64' / 'bin' / 'liblqr-1-0.dll',
    ['libglib-2.0-0.dll', 'libintl-8.dll'],
    {
        'libglib-2.0-0.dll': 'glib-2.0-0.dll',
        'libintl-8.dll': 'intl-8.dll',
    },
    strip=False,
    verbose=2,
    test=[],
)
