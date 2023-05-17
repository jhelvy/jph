#' Write a html file to disc
#'
#' Save the html from a url to disc
#' @param url url to webpage.
#' @param filename Path to save html to disc.
#' @export
#' @examples
#' url <- "https://www.formula1.com/en/results.html/2022/drivers.html"

#' # Uncomment to save to disc:
#' # write_html(url, "formula1.html")
#'
write_html <- function(url, filename) {
  xml2::write_xml(rvest::read_html(url), file = filename)
}
