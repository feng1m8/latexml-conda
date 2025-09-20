import os
import shutil
from pathlib import Path


src = Path(os.getenv('SRC_DIR'))
library = Path(os.getenv('LIBRARY_PREFIX'))

shutil.copytree(src / 'ucrt64', library / 'ucrt64')
shutil.move(library / 'ucrt64' / 'bin' / 'libwinpthread-1.dll', library / 'bin' / 'libwinpthread-1.dll')
