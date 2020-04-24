from pathlib import Path
import re
import sys

if len(sys.argv) == 1:
    section = "05"
    outfile = "05-aero.Rmd"
else:
    section = sys.argv[1]
    outfile = sys.argv[2]
infile = Path('../pandoc-output/') / section / outfile

media_old = '..\\..\\handbook-2013\\pandoc-output\\' + section + '\\/media/'
media_new = "media/" + section + "/"

single_digit = re.compile(r'\[(?=\d{1}\])')
double_digit = re.compile(r'\[(?=\d{2}\])')
triple_digit = re.compile(r'\[(?=\d{3}\])')

with open(infile, encoding="utf-8") as i:
    with open(outfile,"w", encoding="utf-8") as o:
        content = i.read()
        # Replace Section header with #
        content = content.replace("**Section", "#")
        # Replace media references
        content = content.replace(media_old, media_new)
        # Replace .wmf and .emf with .png
        content = content.replace(".wmf", ".svg")
        content = content.replace(".emf", ".svg")
        # Replace single digit references with [##00 where ## is section
        content = single_digit.sub('[' + section + '00', content)
        content = double_digit.sub('[' + section + '0' , content)
        content = triple_digit.sub('[' + section       , content)

        o.write(content)