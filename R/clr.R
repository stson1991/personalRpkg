#' Class example CLR function
#'
#' @param x A vector of type numeric
#'
#' @return The centered log ratio transform of the input vector
#' @export

clr <- function(x){
  x[x==0] <- 0.001
  log(x) - mean(log(x))
}

