#' Create a "tornado" plot using ggplot2
#'
#' This function creates a "tornado" plot using the ggplot2 package. These
#' are primarily used to display results of a sensitivity analysis.
#' @param data A data frame containing the results of a sensitivity analysis.
#' @param baseline The baseline value for the sensitivity analysis.
#' @param var The data column identifying the variable name being varied.
#' @param level The data column identifying the sensitivity case level
#' (usually 'high' or 'low', relative to the baseline).
#' @param value The data column identifying the value of the variable being
#' varied.
#' @param result The data column identifying the result when the variable 'var'
#' is set at the value of 'value'.
#' @param xlab The x-axis label (defaults to 'Result').
#' @param ylab The y-axis label (defaults to 'Parameter').
#' @export
#' @examples
#'
#' # Create an example data frame of a sensitivity analysis - columns:
#' # 'var'    <- The name of the variable being varied.
#' # 'level'  <- High or Low (relative to the baseline).
#' # 'value'  <- The value of the variable being varied.
#' # 'result' <- The result of the output value at the varied variable value.
#' data <- data.frame(
#'     var    = c('price', 'price', 'fuelEconomy', 'fuelEconomy',
#'                'accelTime', 'accelTime'),
#'     level  = rep(c('high', 'low'), 3),
#'     value  = c(10, 20, 25, 15, 10, 6),
#'     result = c(0.95, 0.15, 0.90, 0.60, 0.85, 0.75)
#' )
#'
#' # Make a tornado plot of the sensitivity analysis results:
#' library(ggplot2)
#'
#' ggTornado(
#'     data = data,
#'     baseline = 0.8, # Baseline result
#'     var = 'var',
#'     level = 'level',
#'     value = 'value',
#'     result = 'result'
#' )
#'
ggTornado <- function(
    data,
    baseline,
    var    = 'var',
    level  = 'level',
    value  = 'value',
    result = 'result',
    xlab   = 'Result',
    ylab   = 'Parameter'
) {

    # Create a new data frame for plotting
    df <- data[c(var, level, value, result)]
    colnames(df) <- c('var', 'level', 'value', 'result')

    df <- df %>%
        # "Center" the result around the baseline result (so baseline is at 0)
        mutate(result = result - baseline) %>%
        # Compute the range in change from low to high levels for sorting
        group_by(var) %>%
        mutate(resultRange = sum(abs(result)))

    # Compute labels for the x-axis
    lb        <- floor(10*min(df$result))/10
    ub        <- ceiling(10*max(df$result))/10
    breaks    <- seq(lb, ub, (ub - lb) / 5)
    breakLabs <- round(breaks + baseline, 2)

    # Make the tornado diagram
    plot <- ggplot(df,
        # Use 'fct_reorder' to order the variables according to shareRange
        aes(x=fct_reorder(var, resultRange), y=result, fill=level)) +
        geom_bar(stat='identity', width=0.6) +
        # Add labels on bars
        geom_text(aes(label=val), vjust=0.5) +
        scale_y_continuous(limits=c(lb, ub), breaks=breaks, labels=breakLabs) +
        labs(x=ylab, y=xlab) +
        theme_bw() +
        # Remove legend
        theme(legend.position='none') +
        coord_flip()

    return(plot)
}
