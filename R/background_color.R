#' Modify ggplot theme background
#'
#' Easily change the background color for a ggplot. Changes both the panel
#' and plot backgrounds to the same desired `color_bg`. Can also change the
#' border color of the plot with `color_border`
#' @param color_bg The desired background color.
#' @param color_border The desired border color.
#' @importFrom ggplot2 theme theme_bw element_blank element_line element_rect
#' element_text unit
#' @export
#' @examples
#' # Make example plot:
#' library(ggplot2)
#' data("midwest", package = "ggplot2")
#' plot <- ggplot(midwest, aes(x = area, y = poptotal)) +
#'     geom_point(aes(col = state, size = popdensity)) +
#'     geom_smooth(method = "loess", se = FALSE) +
#'     xlim(c(0, 0.1)) +
#'     ylim(c(0, 500000)) +
#'     labs(subtitle = "Area Vs Population",
#'         y = "Population",
#'         x = "Area",
#'         title = "Scatterplot",
#'         caption = "Source: midwest")
#' plot
#'
#' # Change the background color to blue
#' plot + background_color('blue')
#'
#' # Change the background color to white and border to blue
#' plot + background_color(color_bg = 'white', color_border = 'blue')

background_color <- function(color_bg = 'white', color_border = 'black') {

    theme(
        panel.background = element_rect(fill = color_bg, color = color_border),
        plot.background = element_rect(fill = color_bg, color = NA)
    )
}
