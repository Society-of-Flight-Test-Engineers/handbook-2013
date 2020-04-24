# A one-time use refresh of ImageMagick conversion of emf/wmf to svg instead of png

# Set working directory to handbookdown
$hbd = "C:\Users\natha\OneDrive\GDrive\SFTE\SFTE Ref Handbook\handbook-2013\handbookdown\"
Set-Location "$hbd"



# Copy pandoc media to handbookdown, including media
$dirs = Get-ChildItem "..\pandoc-output\" -Directory
$exclude_secs = "00","01"

foreach ($d in $dirs){
    $section_num = Split-Path $d -Leaf
    If ($exclude_secs -NotContains $section_num){
        $section_num
        New-Item -Path ".\media\$section_num\" -Type Directory
        Copy-Item "..\pandoc-output\$section_num\media\*.*" ".\media\$section_num\"

        # Run ImageMagick to convert from emf/wmf to png and remove emf/wmf
        Set-Location ".\media\$section_num\"
        magick mogrify -format svg *.wmf
        magick mogrify -format svg *.emf
        Remove-Item *.wmf
        Remove-Item *.emf


        Set-Location "$hbd"
    }

}

