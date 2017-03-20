#' Install over 300 frequently-used packages.
#'
#' This function installs a long list of packages that I frequently use.
#' I only use this after first installing R on a machine to get it ready for
#' use.
#' @param packageList An Rda file listing all the packages to install.
#' @export
#' @examples
#' load(file="./packageList.Rda")
#' installMyPackageLibrary(packageList.Rda)

installMyPackageLibrary = function(packageList){
    install.packages(
        packageList,
        repos='https://cloud.r-project.org/',
        dependencies=T)
}
