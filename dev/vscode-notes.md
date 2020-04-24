# VS Code notes to self

From handbook down directory

```powershell
pandoc -s "..\..\2013 Full Page Edition New\01\01-general.docx" --wrap=none --reference-links --extract-media="..\..\handbook-2013\pandoc-output\01\" -t markdown -o "..\..\handbook-2013\pandoc-output\01\01-general.Rmd"
```

```powershell
cp ..\pandoc-output\04\*.Rmd .\
cp ..\pandoc-output\04\media\*.* .\media\04\
```

```powershell
magick mogrify -format png *.wmf
```

```powershell
rm *.wmf
```

```regex
\[(?=\d{1}\])
```

```powershell
$Env:Path += ";C:\Program Files\R\R-3.6.1\bin"
R.exe
```

```r
bookdown::serve_book(dir = ".", output_dir = "_book", preview = TRUE, in_session = TRUE, quiet = FALSE, daemon = TRUE)
bookdown::serve_book(dir = ".", output_dir = "../docs", preview = TRUE, in_session = TRUE, quiet = FALSE, daemon = TRUE)
bookdown::serve_book(dir = ".", preview = TRUE, in_session = TRUE, quiet = FALSE, daemon = TRUE)
```

## Fresh install

I'm working on an Ubuntu hobby machine.

Installed

- VS Code
- r-base
- RStudio
- r package tinytex
- git
- r package bookdown
- pandoc
- pandoc-citeproc
- r package servr


