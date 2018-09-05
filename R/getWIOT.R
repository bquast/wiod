#' Download a WIOT from the 2016 Release of the WIOD project
#'
#' This function allows you to download a World Input-Output Table
#' (WIOT) from the 2016 release of the \href{www.wiod.org}{WIOD
#' project} for a given year. Additionally you can specify among three
#' possible formats (wide, long, list).
#' @param period the year of the WIOT
#' @param format a character string to specify the needed format,
#'     either "wide" (default), "long" or "list". See Details for more
#'     information.
#' @param as.DT a logical value: Should the "wide" or "long" formats
#'     be returned as data.tables? Default is TRUE.
#' @param version for (possible further) revisions. Currently not
#'     used.
#' @details If \code{format = "wide"} is chosen, the data is returned in a
#'     wide data.table. This format is the format you know from the
#'     Excel sheets (available from the WIOD homepage).
#'
#'     The format option \code{"long"} returns a reshaped/melted
#'     data.table.
#'
#'     Finally, \code{format = "list"} returns a list containing these
#'     matrices/vectors:
#' \enumerate{
#' 
#' \item matrix \strong{Z}, the square (2464 x 2464) matrix of intermediates,
#' \item matrix \strong{F}, the final demand block (2464 x 220),
#' \item vector \strong{x}, gross output per country-sector,
#' \item vector \strong{v}, value added per country-sector,
#' \item matrix \strong{va.block}, the valuation block (i.e. taxes, adjustments
#'     for exports, international trade margins, etc.) and
#' \item 1-element vector \strong{year}, specifying the year of the WIOT.
#' }
#' @return the function returns either a data.table (or data.frame
#'     when \code{as.DT = FALSE}) for the chosen formats "wide" or "long", or
#'     a list for format "list"
#' @author Oliver Reiter
#' @seealso \url{http://www.wiod.org/database/wiots16}
#' @references 
#' Timmer, M. P., Dietzenbacher, E., Los, B., Stehrer, R. and de
#' Vries, G. J. (2015),
#' "An Illustrated User Guide to the World Input-Output Database: the Case of Global Automotive Production". Available
#' \href{http://dx.doi.org/10.1111/roie.12178}{here}.
#' @keywords data, input-output, wiod
#' @export
#' @import data.table
#' @examples
#' wiot.2005 <- getWIOT(period = 2005, format = "wide")
#'
#' ##
#' ## get all WIOTs at once
#' ##
#' ## wiod.list <- list()
#' ## for(this.year in 2000:2014) {
#' ##   wiod.list[[as.character(this.year)]] <- getWIOT(period = this.year,
#' ##                                                     format = "list")
#' ##}
#'
#' ##
#' ## decompose the 2005 WIOT using the WWZ decomposition
#' ##
#' ## library(decompr)
#' ## wiot.2005 <- getWIOT(period = 2005, format = "list")
#' ## industries <- 1:56
#' ## countries <- unique(substring(names(wiot.2005$x), 1, 3))
#' ## decomp <- decomp(x = wiot.2005$Z,
#' ##                  y = wiot.2005$F,
#' ##                  k = countries,
#' ##                  i = industries,
#' ##                  o = wiot.2005$x,
#' ##                  V = wiot.2005$v,
#' ##                  method = "wwz",
#' ##                  verbose = TRUE)
getWIOT <- function(period = 2010,
                      format = "wide",  # or "long" or "list"
                      as.DT = TRUE,     # as data.table?
                      version = "October16") { # default and only option

    ##
    ## sanity checks
    ##
    if(period < 2000 | period > 2014) {
        stop(" -> WIOTs are available for the years 2000 till 2014!")
    }
    
    if(!(format %in% c("wide", "long", "list"))) {
        stop(" -> The only possible format options are 'wide', 'long' or 'list'!")
    }
    
    if(version != "October16") {
        warning("No other version available. This option is without effect.")
    }
    
    if(!is.logical(as.DT)) {
        stop(" -> Please specify either TRUE or FALSE for the as.DT-option.")
    }

    if((as.DT == FALSE) & (format == "list")) {
        warning("For format = 'list', as.DT does not have an effect.")
    }

    ## WIOT2000_October16_ROW_list.rds
    base.url <- "https://wiiw.ac.at/files/staff-content/reiter/"

    res <- readRDS(file = gzcon(url(paste0(base.url, "WIOT", period, "_",
                                           version, "_ROW",
                                           ## "_", format,
                                           ifelse(format == "wide", "",
                                                  paste0("_", format)),
                                           ".rds"))))

    ## load(file = url(paste0(base.url, "WIOT", period, "_",
    ##                        version, "_ROW",
    ##                        ifelse(format == "wide", "",
    ##                               paste0("_", format)),
    ##                        ".RData")))
    ## if(format == "wide") {
    ##     res <- wiot
    ## } else if(format == "long") {
    ##     res <- wiot.long
    ## } else if(format == "list") {
    ##     res <- wiot.list
    ## }
    

    if(format %in% c("wide", "long") & !as.DT) {
        ## print(format)
        ## print(as.DT)
        res <- as.data.frame(res)
    }

    return(res)
}
