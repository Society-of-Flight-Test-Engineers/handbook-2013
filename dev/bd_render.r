setwd("../handbookdown")
#renv::restore()
bookdown::render_book(input = ".", 
                      output_format = "bookdown::pdf_book",
                      preview = FALSE, 
                      quiet = FALSE)
