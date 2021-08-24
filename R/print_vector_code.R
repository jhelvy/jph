#' Prints the code to create a given vector
#'
#' This function prints the code to create a given vector.
#' @param a A vector of elements for which the printed code will create.
#' @param line_breaks Set to TRUE to print a new line in between each string
#' @export
#' @examples
#' # Create a set of strings:
#' strings <- c('one', 'two', 'one', 'three', 'two', 'four')
#'
#' # Print code to create the set of all unique string values:
#' printConcatCode(unique(strings))
#'
#' # Print code with new lines in between each string:
#' printConcatCode(unique(strings), line_breaks = TRUE)

print_vector_code <- function(a, line_breaks = FALSE) {
    if (line_breaks) {
        result <- paste(a, collapse = "',\n'")
        result <- paste0("c(", "\n'", result, "'\n", ")")
    } else {
        result <- paste(a, collapse = "', '")
        result <- paste0("c('", result, "')")
    }
    cat(result)
    cat('\n')
}









