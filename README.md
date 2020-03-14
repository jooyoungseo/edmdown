
<!-- README.md is generated from README.Rmd. Please edit that file -->

# edmdown

<!-- badges: start -->

<!-- badges: end -->

The goal of edmdown is to provide a reproducible template for the
Journal of Educational Data Mining using R Markdown in multiple formats
such as pdf, gitbook, and Word.

## Installation

`edmdown` is currently under development on GitHub. Please install and
test the package as follows:

``` r
if (!require(remotes)) {
  install.packages("remotes")
}

remotes::install_github("jooyoungseo/edmdown")
```

## Example

This is a basic example which shows you how to use `edmdown` package.

While other formats are usable, `pdf` output is fully supported at this
moment.

``` r
## Loading package:
library(edmdown)

## Do the following if you are a non-RStudio user:
rmarkdown::draft(file = "my_article", 
   template = "jedm_article", 
   package = "edmdown"
)

# After editing, use the bookdown knit button in RStudio; if you don't use RStudio, do the following in your R console:
bookdown::render_book("my_article.Rmd", output_format = "all")
```
