#' NIFTY50 1 Minute Chart data
#'
#' The NIFTY 50 index is National Stock Exchange of India's benchmark 
#' stock market index for Indian equity market.
#' It is a well diversified 50 stock index accounting for 22 sectors 
#' of the economy. It is used for a variety of purposes such as benchmarking 
#' fund portfolios, index based derivatives and index funds.
#' @format A data frame with 8 variables: \code{index}, \code{date},
#' \code{time}, \code{open}, \code{high}, \code{low} , \code{close} and \code{id}

"nifty_1min"

#' Bank index 1 Minute Chart data
#'
#' Bank Nifty represents the 12 most liquid and
#' large capitalised stocks from the banking sector
#' which trade on the National Stock Exchange (NSE). 
#' It provides investors and market intermediaries a 
#' benchmark that captures the capital market performance of Indian banking sector.
#'
#' @format A data frame with 8 variables: \code{index}, \code{date},
#' \code{time}, \code{open}, \code{high}, \code{low} , \code{close} and \code{id}

"bank_1min"

#' companyList for stocks
#'
#' It contains the 502 company name list and their id for accessing the 
#' datasource. Company performance interms of 1 Min chart data can be further 
#' loaded from their corresponding file name. 
#' @format A data frame with 3 variables: \code{company}, \code{id},
#' and  \code{file}

"companyList"

#' Individual stocks 1 Minute Chart data
#'
#' Choosing individual stocks from other companies can have 
#' advantages over fund allocation for the investors. 
#' Predicting an individual stock price is not a easy task,
#' while it depends on many external sources such as company performance,
#' government policy, public expectation and media focus, etc.
#' Stock price are considered to be
#' very dynamic and some dependency with technical indicators.
#' These datasets are aggregated with their alphabetical order (groups)
#' 
#' @format A data frame with five variables: \code{id}, \code{date},
#' \code{time}, \code{open}, \code{high}, \code{low} , \code{close} and \code{vol}

"nse_BB"