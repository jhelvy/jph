#' Sort a data frame or matrix by a desired column number.
#'
#' This function sorts a data frame or matrix by a desired column number.
#' It essentially does the same function as \code{arrange} in the plyr
#' package.
#' @param df A data frame or matrix to sort.
#' @param col The desired column by which to sort.
#' @export
#' @examples
#' sortByCol(cars, 2)

sortByCol = function(df, col) {
    return(df[order(-df[,col]),])
}





