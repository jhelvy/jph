# jhelvyr
A bunch of useful functions and settings for working in R.

# Installation
First, make sure you have the `devtools` library installed:

`install.packages('devtools')`

Then run these commands to install and load the `jhelvyr` library:

```
library('devtools')
install_github('jhelvyr','jhelvy')
library('jhelvyr')
```

# Functions
The following functions are included in this package:

* `ggmultiplot()`    : Plot multiple ggplot objects into one plot frame.
* `jColors()`        : A list of nice color palettes.
* `loadPackages()`   : Install and load a series of R packages.
* `sortByCol()`      : Sorts data frame or matrix by a desired column number.
* `sourceDirFiles()` : Source all R files in a given directory.
* `getMyPackageLibrary()` : Get a character list of all currently installed packages on your machine.
* `installMyPackageLibrary()`: Install over 300 frequently-used packages.

To view more details of any of the functions, run `?functionName()` in R, replacing 'functionName' with the name of the function.


