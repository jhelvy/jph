# jhelvyr
A bunch of useful functions and settings for working in R.

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
* `ggmultiplot()`: Plot multiple ggplot objects into one plot frame.
* `installAllThePackages()`: Install loads of packages (>500) all at once.
* `jColors()`: A list of nice color palettes.
* `multiLibrary()`: Load multiple R packages at once.
* `sortByCol()`: Sort a data frame or matrix by a desired column number.
* `sourceDirFiles()`: Source all R files in a given directory.

To view more details of any of the functions, run `?functionName()` in R, replacing 'functionName' with the name of the function.


