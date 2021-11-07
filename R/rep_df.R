#' Repeats a data frame n times
#'
#' Returns a data frame repeated by row n time.
#' @param df A data frame.
#' @param n The number of times to repeat the data frame by row.
#' @export
#' @examples
#' df <- data.frame(
#'   one = c(1, 2),
#'   two = c(3, 4),
#'   three = c(5, 6)
#' )
#'
#' rep_df(df, 3)
#'
rep_df <- function(df, n) {
  result <- df[rep(seq_len(nrow(df)), n), ]
  row.names(result) <- NULL
  return(result)
}
