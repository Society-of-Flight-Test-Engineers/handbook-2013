# A one-time use find and replace in multiple files
 
from pathlib import Path
import re
import sys

# Brute force replacement of png to svg
# Turns out NOT globally correct. Manually corrected

for fname in Path.cwd().glob('*.Rmd'):
    with open(fname, "r", encoding="utf-8") as f:
        with open(fname.with_suffix(".tmp"), "w", encoding="utf-8") as t:
            content = f.read().replace(".png", ".svg")
            # Replace .png with .svg
            t.write(content)
    fname.unlink()
    fname.with_suffix(".tmp").replace(fname)
