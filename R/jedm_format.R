#' @section \code{jedm_pdf}: Format for creating Journal of Educational 
#'   Data Mining (JEDM) articles. Adapted from
#'   \url{https://jedm.educationaldatamining.org/index.php/JEDM/information/authors}.
#' @export

jedm_pdf <- function(..., pandoc_args = NULL) {
jedm_pdf_format = bookdown::pdf_book(..., template = find_resource("jedm_article", 'template.tex'), keep_tex = TRUE, pandoc_args = c(
'--metadata', 'citeproc=false',
rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
pandoc_args))

jedm_pdf_format
}

#' @section \code{jedm_word}: Format for creating Journal of Educational 
#'   Data Mining (JEDM) articles. Adapted from
#'   \url{https://jedm.educationaldatamining.org/index.php/JEDM/information/authors}.
#' @export

jedm_word <- function(..., pandoc_args = NULL) {
jedm_word_format = bookdown::word_document2(..., reference_docx = find_resource("jedm_article", 'template.docx'), pandoc_args = c(
'--metadata', 'citeproc=false',
rmdfiltr::add_wordcount_filter(rmdfiltr::add_replace_ampersands_filter(rmdfiltr::add_citeproc_filter(args = NULL))),
pandoc_args))

jedm_word_format
}
