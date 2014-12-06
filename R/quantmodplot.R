#' Make a random plot
#' 
#' This function creates a random histogram plot.
#' 
#' @export
#' @param n numer of random values 
#' @param dist one of "normal" or "uniform".

#library(quantmod)

quantmodplot <- function (tickler = "GSPC") 
{

  getSymbols(paste("^",tickler,sep=""))
  x <- get(tickler)
  chartSeries(x,subset="2014",theme="white")
}
