#' Install loads of packages (>500) all at once.
#'
#' This function installs a bunch of packages that I frequently use.
#' Useful after first installing or upgrading R.
#' @export
#' @examples
#' # View a list of all the packages:
#' installAllThePackages(preview=T)
#'
#' # Install all the packages:
#' installAllThePackages()

installAllThePackages = function(preview=F) {
    packageList = read.csv(
        file  = 'https://raw.github.com/jhelvy/jhelvyr/master/packageList.csv',
        header = FALSE)
    packageList = as.character(packageListDF[,1])
    if (preview) {
        print(packageList)
    } else {
        install.packages(
            packageList,
            repos='https://cloud.r-project.org/',
            dependencies=T)
    }
}
