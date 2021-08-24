
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jph

<!-- badges: start -->
<!-- badges: end -->

A variety of functions that are sometimes useful for working in R.

## Installation

This package is not available on CRAN, but you can install it from
[GitHub](https://github.com/jhelvy/jph):

``` r
# install.packages("remotes")
remotes::install_github("jhelvy/jph")
```

Load the library with:

``` r
library(jph)
```

## Contents

This package contains the following functions:

-   `cs()`: Returns a vector of character strings from list of unquoted
    names (copied directly from the Hmisc package).
-   `ci()`: Get confidence intervals for every column in a data frame.
-   `ggtornado()`: Creates a “tornado” plot using the ggplot2 library.
-   `jColors()`: A list of nice color palettes.
-   `jTheme()`: A custom theme for making plots in ggplot2.
-   `vector_code()`: Prints the code to concatenate a vector of strings.
-   `read_zip()`: Downloads a zipped file from the web and return the
    local paths to each file.
-   `source_dir()`: Source all R files in a given directory.

To view more details of any of the functions, run `?functionName()` in
R, replacing ‘functionName’ with the name of the function.

## Author, Version, and License Information

-   Author: *John Paul Helveston* <https://www.jhelvy.com/>
-   Date First Written: *Saturday, March 18, 2017* in the Cathedral of
    Learning in Pittsburgh, PA
-   License: [MIT](https://github.com/jhelvy/jph/blob/master/LICENSE.md)

## Citation Information

If you use this package for in a publication, I would greatly appreciate
it if you cited it - you can get the citation by typing
`citation("jph")` into R:

``` r
citation("jph")
#> 
#> To cite jph in publications use:
#> 
#>   John Paul Helveston (2021). Miscellaneous R Functions Written By John
#>   Paul Helveston. R package version 1.2.0
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {jph: Miscellaneous R Functions Written By John Paul Helveston},
#>     author = {John Paul Helveston},
#>     year = {2021},
#>     note = {R package version 1.2.0},
#>     url = {https://jhelvy.github.io/jph/},
#>   }
```
