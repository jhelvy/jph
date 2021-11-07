# This function takes draws of estimated model coefficients and computes the
# logit fraction with each set of draws and returns a mean result with a
# lower and upper bound from a 95% confidence interval.

#' Computes logit fraction given a set of coefficients and alternatives
#'
#' Returns a data frame of the predicted probabilities (with a confidence)
#' interval) for a set of coefficients (or coefficient draws) and a data frame
#' of alternatives.
#' @param coefs A matrix of coefficients or draws of coefficients.
#' @param newdata A data frame of a set of alternatives for which to compute
#' logit probabilities. Each row is an alternative.
#' @param obsID The name of the column that identifies each set of
#' alternatives. Defaults to `NULL`, in which case it assumes the newdata
#' are all one choice scenario.
#' @param ci The sensitivity of the computed confidence interval (CI).
#' Defaults to `ci = 0.95`, reflecting a 95% CI.
#' @export
logit_probs <- function(coefs, newdata, obsID = NULL, ci = 0.95) {
    if (is.null(obsID)) {
        obsID <- "obsID"
        newdata$obsID <- rep(1, nrow(newdata))
    }
    obsID <- newdata[, obsID]
    recoded <- logitr::recodeData(newdata, colnames(coefs), NULL)
    expV <- exp(recoded$X %*% t(coefs))
    sumExpV <- rowsum(expV, group = obsID, reorder = FALSE)
    reps <- table(obsID)
    probs <- expV / sumExpV[rep(seq_along(reps), reps),]
    return(ci(t(probs), ci))
}
