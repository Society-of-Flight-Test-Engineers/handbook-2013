# Establish section information that will be used in the rest of the script
param ($section_num, $section_name)
$section_file = "$section_num-$section_name"

#$old_path = Get-Location

# Set working directory to handbookdown
$hbd = "C:\Users\natha\OneDrive\GDrive\SFTE\SFTE Ref Handbook\handbook-2013\handbookdown\"
Set-Location "$hbd"

# Run pandoc
pandoc -s "..\..\2019 Addenda\$section_file.docx" `
    --wrap=none `
    --reference-links `
    --extract-media="..\..\handbook-2013\pandoc-output\$section_num\" `
    -t markdown `
    -o "..\..\handbook-2013\pandoc-output\$section_num\$section_file.Rmd"

# Copy pandoc output to handbookdown, including media
# Running python script to run first simple find/replace operations
python .\md-script.py $section_num "$section_file.Rmd"
# Copy-Item "..\pandoc-output\$section_num\*.Rmd" ".\"
New-Item -Path ".\media\$section_num\" -Type Directory 
Copy-Item "..\pandoc-output\$section_num\media\*.*" ".\media\$section_num\"

# Run ImageMagick to convert from emf/wmf to png and remove emf/wmf
Set-Location ".\media\$section_num\"
magick mogrify -format svg *.wmf
magick mogrify -format svg *.emf
Remove-Item *.wmf
Remove-Item *.emf

Set-Location "$hbd"

Rscript bd.r