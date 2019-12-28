.onAttach <- function(lib, pkg,...){
  packageStartupMessage(timeperiodsRWelcomeMessage())
}

#
#

timeperiodsRWelcomeMessage <- function(){
  # library(utils)
  
  paste0("\n",
         "---------------------\n",
         "Welcome to timeperiodsR version ", utils::packageDescription("timeperiodsR")$Version, "\n",
         "\n",
         "Author:           Alexey Seleznev (Head of analytics dept at Netpeak).\n",
		 "Telegram channel: https://t.me/R4marketing \n",
         "Email:            selesnow@gmail.com\n",
         "Blog:             https://alexeyseleznev.wordpress.com \n",
         "Facebook:         https://facebook.com/selesnown \n",
         "Linkedin:         https://www.linkedin.com/in/selesnow \n",
         "\n",
         "Type ?timeperiodsR for the main documentation.\n",
         "The github page is: https://github.com/selesnow/timeperiodsR/\n",
         "\n",
         "Suggestions and bug-reports can be submitted at: https://github.com/selesnow/timeperiodsR/issues\n",
         "Or contact: <selesnow@gmail.com>\n",
         "\n",
         "\tTo suppress this message use:  ", "suppressPackageStartupMessages(library(timeperiodsR))\n",
         "---------------------\n"
  )
}


.onLoad <- function(libname, pkgname) {
  
  # read variables
  official_day_offs         <- Sys.getenv("TPR_DAY_OFFS")
  official_day_offs_country <- Sys.getenv("TPR_COUNTRY")
  official_day_offs_pre     <- Sys.getenv("TPR_PRE")
  
  # check variables
  if ( official_day_offs == "" )         official_day_offs <- FALSE
  if ( official_day_offs_country == "" ) official_day_offs_country <- "ru"
  if ( official_day_offs_pre == "" )     official_day_offs_pre <- 0
  
  op <- options()
  op.timeperiodsR <- list(timeperiodsR.official_day_offs         = as.logical(official_day_offs),
                          timeperiodsR.official_day_offs_country = official_day_offs_country,
                          timeperiodsR.official_day_offs_pre     = official_day_offs_pre)
  
  toset <- !(names(op.timeperiodsR) %in% names(op))
  if (any(toset)) options(op.timeperiodsR[toset])
  
  invisible()
}