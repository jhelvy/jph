library(devtools)
library(roxygen2)
library(here)

# Create the documentation for the package
document()

# Install the package
setwd('..')
install('jhelvyr')

# Load the package and view the summary
library(jhelvyr)
help(package=jhelvyr)

# Install from github
# library('devtools')
# install_github('jhelvyr','jhelvy')
# library('jhelvyr')
# help(package=jhelvyr)
