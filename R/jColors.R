#' A list of nice color palettes.
#'
#' Returns a list of different color palettes. Each palette is a data.frame.
#' trove Palette found at http://colrd.com/palette/19308/
#' redToGray Palette found at http://colrd.com/palette/21894/
#' @param palette A palette name. Options include: `"basic"`, `"extended"`,
#' `"bright"`, `"stan"`, `"clean"`, `"set3"`, `"trove"`, `"redToGray"`.
#' @param colors Which colors you want from the palette?
#' @param preview Preview the colors in the palette?
#' @keywords colors
#' @export
#' @examples
#' # Preview every color palette
#' jColors(preview = TRUE)
#'
#' # Preview a single color palette
#' jColors(palette = "basic", preview = TRUE)
#'
#' # Preview a few colors from a single color palette
#' jColors(palette = "basic", colors = c("red", "blue"), preview = TRUE)
#'
#' # Get the colors from a whole palette as a vector
#' jColors(palette = "basic")
#'
#' # Get only select colors from a palette as a vector
#' jColors(palette = "basic", colors = c("red", "blue"))
jColors <- function(palette = NULL, colors = NULL, preview = FALSE) {
    basic <- c(
        green  = '#8FC977FF',
        blue   = '#80C5DCFF',
        yellow = '#E8BF4DFF',
        orange = '#E37D39FF',
        red    = '#980000FF',
        gray   = 'grey70',
        black  = 'black')
    extended <- c(
        red        = "#e3394a",
        pink       = "#e3399e",
        darkred    = "#990000",
        yellow     = "#e3d139",
        orange     = "#e37d39",
        darkorange = "#994c00",
        blue       = "#399ee3",
        darkblue   = "#000099",
        green      = "#39e37d",
        darkgreen  = "#009900",
        purple     = "#bf9df1",
        darkpurple = "#7d39e3",
        gray       = "grey70",
        darkgray   = "#666666",
        black      = "black")
    bright <- c(
        green  = '#99D594',
        blue   = '#3288BD',
        yellow = '#E6F598',
        red    = '#F73753',
        gray   = 'gray')
    stan <- c(
        light           = '#DCBCBC',
        light_highlight = '#C79999',
        mid             = '#B97C7C',
        mid_highlight   = '#A25050',
        dark            = '#8F2727',
        dark_highlight  = '#7C0000')
    clean <- c(
        red    = '#FF3B3F',
        yellow = '#E6F598',
        blue   = '#CAEBF2',
        light  = '#EFEFEF',
        gray   = '#A9A9A9')
    set3 <- c(
        teal        = '#8DD3C7',
        lightyellow = '#FFFFB3',
        lavender    = '#BEBADA',
        red         = '#FB8072',
        blue        = '#80B1D3',
        orange      = '#FDB462',
        green       = '#B3DE69',
        pink        = '#FCCDE5',
        gray        = '#D9D9D9',
        purple      = '#BC80BD',
        jade        = '#CCEBC5',
        yellow      = '#FFED6F')
    trove <- c(
        darkgreen   = '#51574a',
        green       = '#447c69',
        lightgreen  = '#74c493',
        brown       = '#8e8c6d',
        tan         = '#e4bf80',
        yellow      = '#e9d78e',
        orange      = '#e2975d',
        peach       = '#f19670',
        pink        = '#e16552',
        darkpink    = '#c94a53',
        pink2       = '#be5168',
        darkpink2   = '#a34974',
        magenta     = '#993767',
        purple      = '#65387d',
        darkpurple  = '#4e2472',
        lightpurple = '#9163b6',
        pink3       = '#e279a3',
        darkpink3   = '#e0598b',
        teal        = '#7c9fb0',
        blue        = '#5698c4',
        jade        = '#9abf88')
    redToGray <- c(
        red          = '#ff1417',
        orange       = '#ff6611',
        redorange    = '#ff8844',
        yellow       = '#ffee55',
        brightyellow = '#fefe38',
        lightyellow  = '#ffff99',
        green        = '#aacc22',
        lightgreen   = '#bbdd77',
        lightjage    = '#c8cf82',
        darkjade     = '#92a77e',
        lightblue    = '#5599ee',
        blue         = '#0088cc',
        darkblue     = '#226688',
        navyblue     = '#175279',
        navygray     = '#557777',
        mustard      = '#ddbb33',
        peach        = '#d3a76d',
        brown        = '#a9834b',
        purple       = '#aa6688',
        gray         = '#767676')
    paletteList <- list(
        basic     = basic,
        extended  = extended,
        bright    = bright,
        stan      = stan,
        clean     = clean,
        set3      = set3,
        trove     = trove,
        redToGray = redToGray)
    if (preview) {
        if (is.null(palette)) {
            graphics::par(mfrow = c(4, 2))
            graphics::par(mar = c(1, 6, 1, 1))
            make_barplot('basic', colors, paletteList)
            make_barplot('extended', colors, paletteList)
            make_barplot('bright', colors, paletteList)
            make_barplot('stan', colors, paletteList)
            make_barplot('clean', colors, paletteList)
            make_barplot('set3', colors, paletteList)
            make_barplot('trove', colors, paletteList)
            make_barplot('redToGray', colors, paletteList)
        } else {
            graphics::par(mfrow = c(1, 1))
            graphics::par(mar = c(1, 6, 1, 1))
            make_barplot(palette, colors, paletteList)
        }
    } else {
        if (is.null(colors)) {
            return(paletteList[[palette]])
        }
        return(paletteList[[palette]][colors])
    }
}

make_barplot <- function(palette, colors, paletteList) {
    if (is.null(colors)) {
        colors <- paletteList[[palette]]
    } else {
        colors <- paletteList[[palette]][colors]
    }
    graphics::barplot(
        as.matrix(rep(1, length(colors))),
        beside    = TRUE,
        las       = 2,
        axes      = FALSE,
        main      = palette,
        col       = colors,
        names.arg = names(colors),
        horiz     = TRUE
    )
}
