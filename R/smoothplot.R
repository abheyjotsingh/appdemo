#' Make a random plot
#' 
#' This function creates a random histogram plot.
#' 
#' @export
#' @param n numer of random values 
#' @param dist one of "normal" or "uniform".
#library(stocks)
#library(ggplot2)

smoothplot <- function (ticker = "GOOG", from = "2013-01-01", to = Sys.time()) 
{
#  library(stocks)
  
  mydata <- yahoodata(ticker, from, to)
  
#  library(ggplot2)
  qplot(Date, Close, data = mydata, geom = c("line", "smooth"))
}
