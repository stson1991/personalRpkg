#' Taek's log-transformed summation of exponential terms function
#'
#' @param x A vector of type numeric
#'
#' @return The log of summation of exponential values of the input vector
#' @examples
#' log_summed_exps(c(1:2000))
#' log_summed_exps(1)
#' log_summed_exps(rnorm(200))
#' @export

log_summed_exps <- function(x){

  n <- length(x)
  x_ordered <- sort(x, decreasing = TRUE)

  summation <- sum(exp(x_ordered[-c(1,n)] - x_ordered[1]))

  log_summed <- x_ordered[1] +  log(1 + summation)
  return(log_summed)
}

























