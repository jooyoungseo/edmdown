#' @section \code{jedm_pdf}: Format for creating Journal of Educational 
#'   Data Mining (JEDM) articles. Adapted from
#'   \url{https://jedm.educationaldatamining.org/index.php/JEDM/information/authors}.
#' @export

jedm_pdf <- function(...) {
bookdown::pdf_book(template = find_resource("jedm_article", 'template.tex'), keep_tex = TRUE, ...)
}

#' @section \code{jedm_word}: Format for creating Journal of Educational 
#'   Data Mining (JEDM) articles. Adapted from
#'   \url{https://jedm.educationaldatamining.org/index.php/JEDM/information/authors}.
#' @export

jedm_word <- function(...) {
bookdown::word_document2(reference_docx = find_resource("jedm_article", 'template.docx'), ...)
}
