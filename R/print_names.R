#' Print data frame names
#'
#' Prints the names of a data frame in a column so they're easy to copy.
#' @param df A data frame.
#' @export
#' @examples
#' df <- data.frame(
#'   one = c(1, 2),
#'   two = c(3, 4),
#'   three = c(5, 6)
#' )
#'
#' print_names(df)
#'
print_names <- function(df) {
  for (i in 1:ncol(df)) { cat(names(df)[i], "\n") }
}
