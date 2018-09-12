#' Creates dummy coded variables in a data frame.
#'
#' This function Creates dummy coded variables in a data frame.
#' @param data A data frame.
#' @param varNames The variables in the data frame for which you want to create new dummy coded variables
#' @export
#' @examples
#' # Create an example data frame:
#' df = data.frame(
#'     animal   = c("dog", "goldfish", "bird", "dog", "goldfish"),
#'     numLegs  = c(4, 0, 2, 4, 0),
#'     lifeSpan = c(10, 10, 5, 10, 10))
#' df
#'
#' # Create dummy coded variables for the variables "animal" and "numLegs":
#' df.dummy = dummyCode(df, varNames=c("animal", "numLegs"))
#' df.dummy

dummyCode = function(data, varNames) {
    # Keep the original variables and the order to restore later after merging
    data$order = seq(nrow(data))
    for (i in 1:length(varNames)) {
        varName  = varNames[i]
        colIndex = which(colnames(data) == varName)
        levels   = sort(unique(data[,colIndex]))
        mergeMat = as.data.frame(diag(length(levels)))
        mergeMat = cbind(levels, mergeMat)
        colnames(mergeMat) = c(varName, paste(varName, levels, sep='_'))
        data = merge(data, mergeMat)
    }
    # Restore the original order
    data = data[order(data$order),]
    row.names(data) = data$order
    data$order <- NULL
    return(data)
}
