#' Vector of character strings from list of unquoted names
#'
#' Returns a vector of character strings from list of unquoted names.
#' (Copied directly from the Hmisc package).
#' @param path Path to directory.
#' @param trace Defaults to TRUE.
#' @export
#' @examples
#' Cs(a,cat,dog)

Cs = function(...) {
    return(as.character(sys.call())[-1])
}
