#' `quarto::quarto_render()`, but output file can move
#'
#' The default `quarto::quarto_render()` function can only render outputs
#' to the current working directory. This is a wrapper that allows it to
#' render to a different directory. It just copies it to the new location
#' after rendering
#' @param input A qmd file.
#' @param output_file Path to the output file.
#' @param ... Other args passed to `quarto::quarto_render()`
#' @export
qrender <- function(input, output_file = NULL, ...) {
    output_file_name <- basename(output_file)
    # First render to the current working directory
    quarto::quarto_render(input = input, output_file = output_file_name, ...)
    # Only copy it to the desired path and delete the original file
    # if it's in a different directory
    if (output_file != output_file_name) {
        file.copy(from = output_file_name, to = output_file)
        file.remove(output_file_name)
    }
}
