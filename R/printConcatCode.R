#' Prints the code to concatenate a set of strings
#'
#' This function prints the code to concatenate a set of strings.
#' @param strings A vector of strings.
#' @param lineBreaks Set to TRUE to print a new line in between each string
#' @export
#' @examples
#' # Create a set of strings:
#' strings = c('one', 'two', 'one', 'three', 'two', 'four')
#'
#' # Print code to create the concatenated set of all unique string values:
#' printConcatCode(unique(strings))
#'
#' # Print code with new lines in between each string:
#' printConcatCode(unique(strings), lineBreaks=T)

printConcatCode = function(strings, lineBreaks=FALSE) {
    if (lineBreaks) {
        result = paste(strings, collapse = "',\n'")
        result = paste("c(", "\n'", result, "'\n", ")", sep="")
    } else {
        result = paste(strings, collapse = "', '")
        result = paste("c('", result, "')", sep="")
    }
    cat(result)
    cat('\n')
}









