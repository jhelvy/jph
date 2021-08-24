#' Get a confidence interval for every column in a data frame
#'
#' Returns a data frame with the columns 'mean', 'lower', and 'upper'
#' reflecting the mean and lower and upper bounds of a confidence
#' interval for every column in the data frame
#' @param df A data frame with all numeric columns.
#' @param ci The sensitivity of the computed confidence interval (CI).
#' Defaults to `ci = 0.95`, reflecting a 95% CI.
#' @export
#' @examples
#' df <- data.frame(
#'   unif = runif(1000, 0, 1),
#'   norm = rnorm(1000, 0, 1),
#'   lnorm = rlnorm(1000, 0, 1)
#' )
#'
#' ci(df)
#'
ci <- function(df, ci = 0.95) {
  alpha <- (1 - ci)/2
  df <- data.frame(
    mean  = apply(df, 2, mean, na.rm = TRUE),
    lower = apply(df, 2, function(x) stats::quantile(x, alpha, na.rm = TRUE)),
    upper = apply(df, 2, function(x) stats::quantile(x, 1 - alpha, na.rm = TRUE)))
  return(df)
}
