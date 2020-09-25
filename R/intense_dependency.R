
#' Create an HTML dependency for intense-images.js
#'
#' @rdname html-dependencies
#' @export
#'
#'


intense_dependency <- function() {
  htmltools::htmlDependency(
    name = "intense-images",
    version = "1.0.7",
    package = "rintimg",
    src = c(file = "intense-images"),
    script = "intense.min.js",
    all_files = FALSE
  )
}
