#' Make a random plot
#' 
#' This function creates a random histogram plot.
#' 
#' @export
#' @param n numer of random values 
#' @param dist one of "normal" or "uniform".
randomplot <- function(n, dist=c("normal", "uniform")){
  #input validation
  dist <- match.arg(dist)
  stopifnot(n < 1e6)
  
#  if(dist == "normal"){
#    hist(rnorm(n))
#  }
  
#  if(dist == "uniform"){
#    hist(runif(n))
#  }
  library(quantstrat)
  startDate <- '2010-01-01'  # start of data
  endDate <-  '2014-07-31'   # end of data
  symbols = c("ITOT", "AGG", "GLD", "VNQ")
  Sys.setenv(TZ="UTC")       # set time zone
  
  ## ----results='hide'------------------------------------------------------
  getSymbols(symbols, src='yahoo', index.class=c("POSIXt","POSIXct"),
             from=startDate, to=endDate,adjust=TRUE)
  
  ## ----results='hide'------------------------------------------------------
  initDate <- '2009-12-31'
  initEq <- 1e6
  currency("USD")
  stock(symbols, currency="USD",multiplier=1)
  
  
  ## ------------------------------------------------------------------------
  myTheme<-chart_theme()
  myTheme$col$dn.col<-'lightblue'
  myTheme$col$dn.border <- 'lightgray'
  myTheme$col$up.border <- 'lightgray'
  
  ## ----XLX3x3,cache=FALSE--------------------------------------------------
  #par(mfrow=c(2,2))
  for(symbol in symbols)
  {
    plot(chart_Series(get(symbol),name=symbol))
  }
  #return nothing
  invisible();  
}
