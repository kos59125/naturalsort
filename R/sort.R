#' @rdname naturalsort
#' @export
naturalsort <- function(text, decreasing=FALSE, na.last=NA) {
   text[naturalorder(text, decreasing=decreasing, na.last=na.last)]
}
