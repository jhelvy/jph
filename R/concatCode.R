#' Prints the code to concatenate a set of strings
#'
#' This function prints the code to concatenate a set of strings.
#' @param strings A set of strings.
#' @param returns Set to TRUE to print a new line in between each string
#' @export
#' @examples
#' # Create a set of strings:
#' strings = c('one', 'two', 'one', 'three', 'two', 'four')
#'
#' # Print code to create the concatenated set of all unique string values:
#' concatCode(unique(strings))
#'
#' # Print code with new lines in between each string:
#' concatCode(unique(strings), returns=T)

concatCode = function(strings, returns=FALSE) {
    if (returns) {
        result = paste(strings, collapse = "',\n'")
        result = paste("c(", "\n'", result, "'\n", ")", sep="")
    } else {
        result = paste(strings, collapse = "', '")
        result = paste("c('", result, "')", sep="")
    }
    cat(result)
}









