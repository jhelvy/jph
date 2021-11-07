#' Faster quantile()
#'
#' A faster version of quantile(), copied from this gist:
#' https://gist.github.com/sikli/f1775feb9736073cefee97ec81f6b193
#' @param x numeric vector whose sample quantiles are wanted, or an
#' object of a class for which a method has been defined (see
#' also `'details'`). `NA` and `NaN` values are not allowed in
#' numeric vectors unless `na.rm = TRUE`.
#' @param probs numeric vector of probabilities with values in `[0,1]`.
#' (Values up to `'2e-14'` outside that range are accepted and
#' moved to the nearby endpoint.)
#' @param na.rm logical; if `TRUE`, any `NA` and `NaN`'s are removed from `x`
#' before the quantiles are computed.
#' @export
#' @examples
#' quantile(x <- rnorm(1001)) # Extremes & Quartiles by default
#' quantile(x,  probs = c(0.1, 0.5, 1, 2, 5, 10, 50, NA)/100)
quantile_speed <- function(x, probs = c(0.1, 0.9), na.rm = FALSE) {
  if (na.rm) x <- x[!is.na(x)]
  n <- length(x)
  index <- 1 + (n - 1) * probs
  lo <- floor(index)
  hi <- ceiling(index)
  x  <- sort(x, partial = unique(c(lo, hi)))
  qs <- x[lo]
  i  <- 1:length(probs)
  h  <- index - lo
  qs <- (1 - h) * qs + h * x[hi]
  return(qs)
}



