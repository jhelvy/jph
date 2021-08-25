#' A list of nice color palettes.
#'
#' Returns a list of different color palettes. Each palette is a data.frame.
#' trove Palette found at http://colrd.com/palette/19308/
#' redToGray Palette found at http://colrd.com/palette/21894/
#' @param palette A palette name.
#' @param colors Which colors you want from the palette
#' @param preview Preview the colors in the palette?
#' @keywords colors
#' @export
#' @examples
#' # View sample barplots of each color palette
#' jColors(preview = TRUE)
#'
#' # Select colors from palette by name
#' colors <- jColors('basic', c('blue', 'red'))
#' barplot(
#'   as.matrix(rep(1, 2)),
#'   beside = TRUE, las = 2, axes = FALSE, main = 'basic', col = colors,
#'   names.arg = c('basic-red', 'basic-blue')
#' )
jColors <- function(palette = 'basic', colors = 'black', preview = FALSE) {
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
        graphics::par(mfrow = c(4,2))
        graphics::barplot(as.matrix(rep(1, length(basic))),
                beside=TRUE, las=2, axes=F, main='basic',
                col=basic,
                names.arg=names(basic))
        graphics::barplot(as.matrix(rep(1, length(extended))),
                beside=TRUE, las=2, axes=F, main='extended',
                col=extended,
                names.arg=names(extended))
        graphics::barplot(as.matrix(rep(1, length(bright))),
                beside=TRUE, las=2, axes=F, main='bright',
                col=bright,
                names.arg=names(bright))
        graphics::barplot(as.matrix(rep(1, length(stan))),
                beside=TRUE, las=2, axes=F, main='stan',
                col=stan,
                names.arg=names(stan))
        graphics::barplot(as.matrix(rep(1, length(clean))),
                beside=TRUE, las=2, axes=F, main='clean',
                col=clean,
                names.arg=names(clean))
        graphics::barplot(as.matrix(rep(1, length(set3))),
                beside=TRUE, las=2, axes=F, main='set3',
                col=set3,
                names.arg=names(set3))
        graphics::barplot(as.matrix(rep(1, length(trove))),
                beside=TRUE, las=2, axes=F, main='trove',
                col=trove,
                names.arg=names(trove))
        graphics::barplot(as.matrix(rep(1, length(redToGray))),
                beside=TRUE, las=2, axes=F, main='redToGray',
                col=redToGray,
                names.arg=names(redToGray))
    } else {
        return(as.character(paletteList[[palette]][colors]))
    }
}
