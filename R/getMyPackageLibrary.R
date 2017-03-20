#' Get a character list of all currently installed packages on your machine.
#'
#' This function returns a character list of all currently installed packages
#' on your machine.
#' @export
#' @examples
#' packageList = getMyPackageLibrary()

getMyPackageLibrary = function(){
    packageDF   = as.data.frame(installed.packages())
    packageList = as.character(packageDF$Package)
    return(packageList)
}
