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
#' # Create dummy coded variables for the variable "animal":
#' df.dummy = dummyCode(df, varNames="animal"))
#' df.dummy

#' # Create dummy coded variables for the variables "animal" and "numLegs":
#' df.dummy = dummyCode(df, varNames=c("animal", "numLegs"))
#' df.dummy
#'
dummyCode = function(df, varNames) {
    df = as.data.frame(df)
    nonVarNames = colnames(df)[which(! colnames(df) %in% varNames)]
    # Keep the original variables and the order to restore later after merging
    df$order = seq(nrow(df))
    for (i in 1:length(varNames)) {
        varName  = varNames[i]
        colIndex = which(colnames(df) == varName)
        levels   = sort(unique(df[,colIndex]))
        mergeMat = as.data.frame(diag(length(levels)))
        mergeMat = cbind(levels, mergeMat)
        colnames(mergeMat) = c(varName, paste(varName, levels, sep='_'))
        df = merge(df, mergeMat)
    }
    # Restore the original column order
    new = colnames(df)[which(! colnames(df) %in% c(varNames, nonVarNames))]
    df = df[c(nonVarNames, varNames, new)]
    # Restore the original row order
    df = df[order(df$order),]
    row.names(df) = df$order
    df$order <- NULL
    return(df)
}
