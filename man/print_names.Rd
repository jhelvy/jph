% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print_names.R
\name{print_names}
\alias{print_names}
\title{Print data frame names}
\usage{
print_names(df)
}
\arguments{
\item{df}{A data frame.}
}
\description{
Prints the names of a data frame in a column so they're easy to copy.
}
\examples{
df <- data.frame(
  one = c(1, 2),
  two = c(3, 4),
  three = c(5, 6)
)

print_names(df)

}
