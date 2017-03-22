#' Install and load multiple R packages.
#'
#' This function installs and loads multiple R packages. The function first
#' checks to see if the list of packages are installed. If they are not, it
#' installs them and then loads them into the R session. It is the exact same
#' function as the 'ipak' function by Steven Worthington, found at
#' https://gist.github.com/stevenworthington/3178163.

#' @param pkgs A character vector with the names of the packages to load.
#' @export
#' @examples
#' multiLibrary(c('Hmisc', 'ggplot2', 'dplyr', 'tidyr'))

multiLibrary = function(pkgs){
    new.pkgs = pkgs[!(pkgs %in% installed.packages()[, "Package"])]
    if (length(new.pkgs))
        install.packages(new.pkgs, dependencies = TRUE)
    sapply(pkgs, require, character.only = TRUE)
}
