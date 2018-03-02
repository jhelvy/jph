#' Install over 300 frequently-used packages.
#'
#' This function installs a long list of packages that I frequently use.
#' I only use this after first installing R on a machine to get it ready for
#' use.
#' @export
#' @examples
#' installMyPackageLibrary()

installMyPackageLibrary = function() {
    packageListDF = read.csv(
        file   = 'https://raw.github.com/jhelvy/jhelvyr/master/myPackageList.csv',
        header = FALSE)
    packageList = as.character(packageListDF[,1])
    install.packages(
        packageList,
        repos='https://cloud.r-project.org/',
        dependencies=T)
}
