import shutil
from pathlib import Path


shutil.rmtree(r"C:\Strawberry")

utils = Path(r"C:\Miniconda\Lib\site-packages\conda_build\utils.py")
utils.write_text(utils.read_text().replace(r'r".*\.la$",', ""))
