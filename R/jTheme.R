#' Theme settings for plotting using ggplot2
#'
#' A custom theme for making plots in ggplot2.
#' @export
#' @examples
#' # Make example plot:
#' library(ggplot2)
#' data("midwest", package = "ggplot2")
#' plot <- ggplot(midwest, aes(x=area, y=poptotal)) +
#'     geom_point(aes(col=state, size=popdensity)) +
#'     geom_smooth(method="loess", se=F) +
#'     xlim(c(0, 0.1)) +
#'     ylim(c(0, 500000)) +
#'     labs(subtitle="Area Vs Population",
#'         y="Population",
#'         x="Area",
#'         title="Scatterplot",
#'         caption = "Source: midwest")
#' plot
#'
#' # Add jTheme
#' plot + jTheme()
#'
#' # Add jTheme but keep legend
#' plot + jTheme() + theme(legend.position="right")

jTheme = function() {

    # Color sources
    # palette = brewer.pal("Greys", n=9)
    # color.background = palette[2]
    # color.grid.major = palette[4]
    # color.axis.text  = palette[6]
    # color.axis.title = palette[7]
    # color.title      = palette[9]

    # Generate the colors for the chart procedurally with RColorBrewer
    color.background = '#F0F0F0'
    color.grid.major = '#BDBDBD'
    color.axis.text  = '#737373'
    color.axis.title = '#525252'
    color.title      = '#000000'

    # Begin construction of chart
    theme_bw(base_size=9) +

    # Set the entire chart region to a light gray color
    # theme(panel.background=element_rect(fill=color.background, color=color.background)) +
    # theme(plot.background=element_rect(fill=color.background, color=color.background)) +
    theme(panel.border=element_blank()) +

    # Format the grid
    theme(panel.grid.major=element_line(color=color.grid.major,size=.25)) +
    theme(panel.grid.minor=element_blank()) +
    theme(axis.ticks=element_blank()) +

    # Format the legend, but hide by default
    theme(legend.position="none") +
    theme(legend.background = element_rect(fill=color.background)) +
    theme(legend.text = element_text(size=7,color=color.axis.title)) +

    # Set title and axis labels, and format these and tick marks
    # theme(plot.title=element_text(color=color.title, size=11, vjust=1.25)) +
    theme(plot.title=element_text(color=color.title, size=11)) +
    theme(axis.text.x=element_text(size=10,color=color.axis.text)) +
    theme(axis.text.y=element_text(size=10,color=color.axis.text)) +
    theme(axis.title.x=element_text(size=11,color=color.axis.title, vjust=0)) +
    theme(axis.title.y=element_text(size=11,color=color.axis.title, vjust=1.25)) +

    # Plot margins
    theme(plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm"))
}
