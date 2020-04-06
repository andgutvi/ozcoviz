library(glue)
library(rmarkdown)
library(here)
library(lubridate)

render(input =  "ozcoviz.Rmd",
       output_file = glue("docs/ozcovis-{lubridate::today()}.html"),
       output_dir = here("docs"),
       clean = TRUE)

# generate the index
render(input =  "ozcoviz.Rmd",
       output_file = "index.html",
       output_dir = here("docs"),
       clean = TRUE)