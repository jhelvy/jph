#' Source all R files in a given directory.
#'
#' This function sources all R files in a given directory.
#' @param path Path to directory.
#' @param trace Defaults to TRUE.
#' @export
#' @examples
#' source_dir('filePath')

source_dir <- function(path, trace = TRUE, ...) {
    for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
        if (trace) cat(nm, ":")
        source(file.path(path, nm), ...)
        if (trace) cat("\n")
    }
}
