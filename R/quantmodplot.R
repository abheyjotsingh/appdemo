#' Make a random plot
#' 
#' This function creates a random histogram plot.
#' 
#' @export
#' @param n numer of random values 
#' @param dist one of "normal" or "uniform".

#library(quantmod)

quantmodplot <- function (ticker = "GSPC") 
{

  getSymbols(paste("^",ticker,sep=""))
#  x <- get(ticker)
#  chartSeries(x,subset="2014",theme="white")
}
