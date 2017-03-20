#' Install over 300 frequently-used packages.
#'
#' This function installs a long list of packages that I frequently use.
#' I only use this after first installing R on a machine to get it ready for
#' use.
#' @export
#' @examples
#' installMyPackageLibrary(packageList.Rda)

installMyPackageLibrary = function(){
    require(RCurl)
    text = getURL('https://github.com/jhelvy/jhelvyr/blob/master/packageList.csv?raw=true')
    packageListDF = read.csv(text=text, header=T)
    packageList = as.character(packageListDF[,1])
    install.packages(
        packageList,
        repos='https://cloud.r-project.org/',
        dependencies=T)
}
