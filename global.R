library(dplyr)

allzips <- readRDS("data/superzip.rds")
allzips$latitude <- jitter(allzips$latitude)
allzips$longitude <- jitter(allzips$longitude)
allzips$college <- allzips$college * 100
allzips$zipcode <- formatC(allzips$zipcode, width=5, format="d", flag="0")
row.names(allzips) <- allzips$zipcode

cleantable <- allzips %>%
  select(
    City = city.x,
    State = state.x,
    Zipcode = zipcode,
    Rank = rank,
    Score = centile,
    Superzip = superzip,
    Population = adultpop,
    College = college,
    Income = income,
    Lat = latitude,
    Long = longitude
  )

## function to render .md files to html
inclMD <- function(path)
  markdown::markdownToHTML(path, fragment.only = TRUE, options = "", stylesheet = "")

## function to render .Rmd files to html - does not embed image or add css
inclRmd <- function(path, r_env = parent.frame()) {
  paste(readLines(path, warn = FALSE), collapse = '\n') %>%
    knitr::knit2html(text = ., fragment.only = TRUE, envir = r_env,  options = "",
                     stylesheet = "") %>%
    gsub("&lt;!--/html_preserve--&gt;","",.) %>%  ## knitr adds this
    gsub("&lt;!--html_preserve--&gt;","",.) %>%   ## knitr adds this
    HTML
}
