#' A list of nice color palettes.
#'
#' Returns a list of different color palettes. Each palette is a data.frame.
#' trove Palette found at http://colrd.com/palette/19308/
#' redToGray Palette found at http://colrd.com/palette/21894/
#' @keywords colors
#' @export
#' @examples
#' # View barplots of each color palette
#' colors = jColors(viewColors=T)

jColors = function(viewColors=FALSE) {
    basic = data.frame(
        green  = '#8FC977FF',
        blue   = '#80C5DCFF',
        yellow = '#E8BF4DFF',
        orange = '#E37D39FF',
        red    = '#980000FF',
        gray   = 'grey70', stringsAsFactors=F)
    extended = data.frame(
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
        black      = "black", stringsAsFactors=F)
    trove = data.frame(
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
        jade        = '#9abf88', stringsAsFactors=F)
    redToGray = data.frame(
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
        gray         = '#767676', stringsAsFactors=F)
    if (viewColors) {
        par(mfrow=c(2,2))
        barplot(as.matrix(rep(1, length(basic))),
                beside=TRUE, las=2, axes=F, main='basic',
                col=as.character(basic),
                names.arg=names(basic))
        barplot(as.matrix(rep(1, length(extended))),
                beside=TRUE, las=2, axes=F, main='extended',
                col=as.character(extended),
                names.arg=names(extended))
        barplot(as.matrix(rep(1, length(trove))),
                beside=TRUE, las=2, axes=F, main='trove',
                col=as.character(trove),
                names.arg=names(trove))
        barplot(as.matrix(rep(1, length(redToGray))),
                beside=TRUE, las=2, axes=F, main='redToGray',
                col=as.character(redToGray),
                names.arg=names(redToGray))
    }
    return(list(basic=basic, extended=extended, trove=trove,
                redToGray=redToGray))
}
