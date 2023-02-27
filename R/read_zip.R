#' Download a zipped file from the web and return the temporary paths to each
#' file
#'
#' This function downloads and locally stores a zipped file from a url and then
#' returns a list of the paths to each file
#' @param url A url to a zipped file
#' @export
#' @examples
#' \dontrun{
#' # Download and view fuel economy data for all U.S. vehicles
#' # from 1980 to present (https://www.fueleconomy.gov/feg/download.shtml):
#' url <- 'https://www.fueleconomy.gov/feg/epadata/vehicles.csv.zip'
#' filePaths = read_zip(url)
#' print(filePaths)
#'
#' # View first data file:
#' data <- read.csv(filePaths[1], header = TRUE)
#' head(data)
#' }

read_zip <- function(url) {
    # Create a temporary folder
    td <- tempdir()
    # Create the placeholder file
    tf <- tempfile(tmpdir = td, fileext = '.zip')
    # Download file into the placeholder file
    utils::download.file(url, tf)
    # Get the name of the first file in the zip archive
    fname <- utils::unzip(tf, list=TRUE)$Name[1]
    # Unzip the file to the temporary directory
    utils::unzip(tf, files = fname, exdir = td, overwrite = TRUE)
    # fpath is the full path to the extracted file
    fpath <- file.path(td, fname)
    return(fpath)
}
