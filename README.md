nse1minR - Useful R data package for intraday traders 
===========================================================================

> *Copyright 2016 [Ramanathan Perumal](http://github.com/ramamet). Licensed under
> the MIT license.*
:snowflake::snowman:

Installation :computer::inbox_tray::books:
------------
`nse1minR` is available through GitHub.

To install the latest version from GitHub: 

    install.packages("devtools")
    devtools::install_github("ramamet/nse1minR")
    
It contains huge amount of datasets `(223 mb / ~ 40,000,000 rows of data!)`, this process takes a while (around 120secs). 

**Have patience. All things are difficult before they become easy** :inbox_tray: :coffee: :innocent:

    
Usage :office::wrench::card_index:
-----

We'll first load the package, and then see how all other datasources to be used.
   
    library("nse1minR")    
    
![nse-logo](https://cloud.githubusercontent.com/assets/16385390/20669749/20b69fd4-b576-11e6-8011-4cc1d1009311.jpg)


NIFTY50 index
-----
The NIFTY 50 index is National Stock Exchange of India's benchmark 
 stock market index for Indian equity market.
 It is a well diversified 50 stock index accounting for 22 sectors 
 of the economy. It is used for a variety of purposes such as benchmarking 
 fund portfolios, index based derivatives and index funds.
 A data frame with 8 variables: index, date, time, open, high, low, close and id. 
 For each year from `2013` to `2016`, the number of trading data of each minute of given each date. 
 The currency of the price is `Indian Rupee (INR)`.

     head(nifty_1min)
     
          index     date  time    open    high     low   close               id
        1 NIFTY 20130401 09:16 5701.15 5704.65 5694.30 5697.00 2013APRNIFTY.txt
        2 NIFTY 20130401 09:17 5697.05 5698.35 5695.65 5697.50 2013APRNIFTY.txt
        3 NIFTY 20130401 09:18 5697.90 5697.90 5690.60 5692.15 2013APRNIFTY.txt
        4 NIFTY 20130401 09:19 5691.65 5694.70 5691.65 5693.90 2013APRNIFTY.txt
        5 NIFTY 20130401 09:20 5694.40 5695.05 5693.35 5694.55 2013APRNIFTY.txt
        6 NIFTY 20130401 09:21 5694.10 5700.05 5694.10 5697.20 2013APRNIFTY.txt
 
BANK NIFTY 
-----

 Bank Nifty represents the 12 most liquid and
 large capitalised stocks from the banking sector
 which trade on the National Stock Exchange (NSE). 
 It provides investors and market intermediaries a 
 benchmark that captures the capital market performance of Indian banking sector.   
 
     head(bank_1min)
     
              index     date  time     open     high      low    close             id
        1 BANKNIFTY 20121203 09:16 12125.70 12161.70 12125.70 12160.95 2012DECBNF.txt
        2 BANKNIFTY 20121203 09:17 12161.75 12164.80 12130.40 12130.40 2012DECBNF.txt
        3 BANKNIFTY 20121203 09:18 12126.85 12156.10 12126.85 12156.10 2012DECBNF.txt
        4 BANKNIFTY 20121203 09:19 12157.25 12164.75 12151.60 12164.20 2012DECBNF.txt
        5 BANKNIFTY 20121203 09:20 12162.80 12162.80 12148.20 12151.15 2012DECBNF.txt
        6 BANKNIFTY 20121203 09:21 12152.95 12159.90 12151.90 12158.15 2012DECBNF.txt
        
Company List
-----

It contains the 502 company name list and their id for accessing the 
datasource. Company performance interms of 1 Min chart data can be further 
loaded from their corresponding file name. 
A data frame with 3 variables: company, id, and file

    head(companyList)
    
                             company         id   data
        1                3i Infotech 3IINFOTECH nse_AA
        2 8K Miles Software Services    8KMILES nse_AA
        3      Aban Offshore Limited       ABAN nse_AA
        4      Aban Offshore Limited       ABAN nse_AA
        5              A B B Limited        ABB nse_AA
        6       Abbott India Limited ABBOTINDIA nse_AA
 
Stocks Database
-----
 Choosing individual stocks from other companies can have 
 advantages over fund allocation for the investors. 
 Predicting an individual stock price is not a easy task,
 while it depends on many external sources such as company performance,
 government policy, public expectation and media focus, etc.
 Stock price are considered to be
 very dynamic and some dependency with technical indicators.
 These datasets are aggregated with their alphabetical order (groups).
 for example, if you want to search `BAJAJCORP`, then you need to use `nse_BB` database.
 
     head(nse_BB)
     
                 id     date     time   open   high    low  close   NA
        1 BAJAJCORP 20150703 09:16:00 436.10 437.85 436.10 436.65  309
        2 BAJAJCORP 20150703 09:17:00 437.60 437.60 436.80 437.00   83
        3 BAJAJCORP 20150703 09:18:00 436.85 437.40 436.00 437.05  485
        4 BAJAJCORP 20150703 09:19:00 437.60 437.65 437.10 437.55  170
        5 BAJAJCORP 20150703 09:20:00 436.25 437.90 436.25 437.90  345
        6 BAJAJCORP 20150703 09:21:00 437.85 438.70 437.85 438.70 1013

 
rawData 
-----
The datasets were captured from the following website using `Wget`. 


http://www.keralabanking.com/intraday-one-minute-historical-data-free-download/


Initial raw data sets are very complex and mixed datatypes.
These are processed properly using R libraries like `dplyr`,`stringr` and other data munging packages.
The desired outputs are then converted into a  `.RData` format to use in our package. 


contact :mailbox::package:
-----
If you would like to contribute further on this package or bugs, please mail me by `ramamet4@gmail.com`. 
        
        



 
 
        
