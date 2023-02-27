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
quarto_render_pdf <- function(input, output_file = NULL, ...) {
    if (is.null(output_file)) {
        output_file <- paste0(tools::file_path_sans_ext(input), ".pdf")
    }
    output_file_name <- basename(output_file)
    # First render to the current working directory
    quarto::quarto_render(
        input = input,
        output_file = output_file_name,
        ... = ...
    )
    # If the output is in a different directory, copy it there and
    # delete the original file
    if (output_file != output_file_name) {
        file.copy(from = output_file_name, to = output_file, overwrite = TRUE)
        file.remove(output_file_name)
    }
}
