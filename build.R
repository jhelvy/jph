library(devtools)
library(roxygen2)

# Create the documentation for the package
document()

# Install the package
devtools::install(force = TRUE)

# Load the package and view the summary
library(jhelvyr)
help(package='jhelvyr')

# Install from github
# remotes::install_github('jhelvy/jhelvyr')
