#' Source all R files in a given directory.
#'
#' This function sources all R files in a given directory.
#' @param path Path to directory.
#' @param trace Defaults to TRUE.
#' @export
#' @examples
#' sourceDirFiles('filePath')

sourceDirFiles = function(path, trace=TRUE, ...) {
    for (nm in list.files(path, pattern = "\\.[RrSsQq]$")) {
        if(trace) cat(nm, ":")
        source(file.path(path, nm), ...)
        if(trace) cat("\n")
    }
}







