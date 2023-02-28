
<!-- README.md is generated from README.Rmd. Please edit that file -->

# jph: Miscellaneous R Functions

<!-- badges: start -->
<!-- badges: end -->

## Installation

You can install this package from
[GitHub](https://github.com/jhelvy/jph):

``` r
# install.packages("remotes")
remotes::install_github("jhelvy/jph")
```

Load the package with:

``` r
library(jph)
```

## Contents

This package contains the following functions:

- `ci()`: Get confidence intervals for a vector of numbers or for every
  column in a data frame of numeric columns.
- `cs()`: Returns a vector of character strings from list of unquoted
  names (copied directly from the Hmisc package).
- `ggtornado()`: Creates a “tornado” plot using the
  [{ggplot2}](https://ggplot2.tidyverse.org/) package.
- `jColors()`: A list of nice color palettes.
- `jTheme()`: A custom theme for making plots in ggplot2.
- `logit_probs()`: Computes logit fraction given a set of coefficients
  and alternatives.
- `print_names()`: Prints the names of a data frame in a column so
  they’re easy to copy.
- `quarto_render_move()`: `quarto::quarto_render()`, but output file is
  moved to `output_dir`. Temporary solution for the issue discussed in
  [this
  thread](https://github.com/quarto-dev/quarto-cli/discussions/2171#discussioncomment-5099284).
- `read_zip()`: Downloads a zipped file from the web and return the
  local paths to each file.
- `rep_df()`: Repeats a data frame `n` times.
- `source_dir()`: Source all R files in a given directory.
- `vector_code()`: Prints the code to concatenate a vector of strings.

To view more details of any of the functions, run `?functionName()` in
R, replacing ‘functionName’ with the name of the function.

## Author, Version, and License Information

- Author: *John Paul Helveston* <https://www.jhelvy.com/>
- Date First Written: *Saturday, March 18, 2017* in the Cathedral of
  Learning in Pittsburgh, PA
- License: [MIT](https://github.com/jhelvy/jph/blob/master/LICENSE.md)

## Citation Information

If you use this package for in a publication, I would greatly appreciate
it if you cited it - you can get the citation by typing
`citation("jph")` into R:

``` r
citation("jph")
#> 
#> To cite jph in publications use:
#> 
#>   John Paul Helveston (2021). Miscellaneous R Functions. R package
#>   version 1.5.0
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {jph: Miscellaneous R Functions},
#>     author = {John Paul Helveston},
#>     year = {2021},
#>     note = {R package version 1.5.0},
#>     url = {https://jhelvy.github.io/jph/},
#>   }
```
