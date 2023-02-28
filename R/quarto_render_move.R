#' `quarto::quarto_render()`, but output file is moved to `output_dir`
#'
#' The default `quarto::quarto_render()` function can only render outputs
#' to the current working directory. This is a wrapper that moves the rendered
#' output to `output_dir`.
#' @param input A qmd file.
#' @param output_dir Path to the output directory.
#' @param ... Other args passed to `quarto::quarto_render()`
#' @export
quarto_render_move <- function(input, output_dir = NULL, ...) {

    # Get the output file from the input qmd file
    x <- quarto::quarto_inspect(input)
    output_format <- names(x$formats)
    output_file <- x$formats[[output_format]]$pandoc$`output-file`

    # Store the input directory
    input_dir <- dirname(input)

    # Render qmd file to input_dir
    quarto::quarto_render(input = input, ... = ...)

    # If output_dir is specified **and it's different from input_dir**,
    # copy the rendered output there and delete the original file
    if (!is.null(output_dir) & (output_dir != input_dir)) {

        # Try to make the folder if it doesn't yet exist
        if (!dir.exists(output_dir)) { dir.create(output_dir) }

        # Now move the output to the output_dir
        output_path_from <- file.path(input_dir, output_file)
        output_path_to <- file.path(output_dir, output_file)
        file.copy(
            from = output_path_from,
            to = output_path_to,
            overwrite = TRUE
        )
        file.remove(output_path_from)
    }
}
