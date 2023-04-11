check_dayoffs <- function(
    date    = NULL,
    year    = NULL,
    month   = NULL,
    day     = NULL,
    cc      = getOption("timeperiodsR.official_day_offs_country"),
    pre     = getOption("timeperiodsR.official_day_offs_pre"),
    include_custom_day_offs = TRUE
    ) {
  
  # check httr
    if ( !requireNamespace("httr", quietly = TRUE) ) { 
    
    message("For get day offs components install the httr package.")
    
    inst_httr <- readline("Do you want install httr? ( y / n ): ")
    
    if ( tolower(inst_httr) == "y" ) {
      
      install.packages('httr')
      
    } else {
      
      return(NA)
        
    }
    
  }
  
  if ( ! is.null(date) ) {
  
    if ( "tpr" %in% class(date) ) {
      
      date <- as.character(seq(date))
      
    }
    
    custom_day_offs_cha <- as.character(getOption("timeperiodsR.custom_day_offs"))
    
    out <-
      sapply(date, 
             function(x) {
              
              # check for custom day offs
              if ( x %in% custom_day_offs_cha & isTRUE( include_custom_day_offs ) ) {
                
                return("3")
                
              }
                
              if ( ! is.null(x) ) {
                if ( ! class(x) == "Date" ) x <- as.Date(x)
                year  <- format(x, "%Y")
                month <- format(x, "%m")
                day   <- format(x, "%d")
              }
              
              ans <- httr::GET("https://isdayoff.ru/api/getdata", 
                         query = list(
                           year=year,
                           month=month,
                           day = day,
                           cc=cc,
                           pre=pre
                           )
              )
              
              # check status
              if ( httr::http_error(ans) ) {
                
                warning('isDayOff API Internal Error')
                temp_out <- "9"
                
              } else {
                
                temp_out <- httr::content(ans, encoding = "UTF-8")
                  
              }
              
              return(temp_out)
              
             }, USE.NAMES = TRUE
     )
    
  } else {
    
    ans <- httr::GET("https://isdayoff.ru/api/getdata", 
                     query = list(
                       year=year,
                       month=month,
                       day = day,
                       cc=cc,
                       pre=pre)
                     )
    
    # check status
    if ( httr::http_error(ans) ) {
      
      warning('isDayOff API Internal Error')
      temp_out <- "9"
      
    } else {
      
      out <- httr::content(ans, encoding = "UTF-8")
      
    }
    
  }
  
  return(out)
}
