# jhelvyr
A bunch of useful functions for working in R.

# Installation
First, make sure you have the `devtools` library installed:

`install.packages('devtools')`

Then run these commands to install and load the `jhelvyr` library:

```
library('devtools')
install_github('jhelvy/jhelvyr')
library('jhelvyr')
```

# Contents
This package contains the following functions:

* `Cs()`: Returns a vector of character strings from list of unquoted names (copied directly from the Hmisc package).
* `dummyCode()`: Creates dummy coded variables in a data frame.
* `ggmultiplot()`: Plot multiple ggplot plots into one plot frame.
* `ggTornado()`: Creates a "tornado" plot using the ggplot2 library.
* `jColors()`: A list of nice color palettes.
* `jTheme()`: A custom theme for making plots in ggplot2..
* `multiLibrary()`: Load multiple R packages at once.
* `printConcatCode()`: Prints the code to concatenate a vector of strings.
* `read.zip()`: Downloads a zipped file from the web and return the local paths to each file.
* `sourceDirFiles()`: Source all R files in a given directory.

To view more details of any of the functions, run `?functionName()` in R, replacing 'functionName' with the name of the function.


