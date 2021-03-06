#' @name wiod-package
#' @docType package
#' @title World Input Output Database, Release 2013 and Release 2016
#' @description Access to the data sets from the World Input Output
#'     Database, for the 2013 Release (1995 - 2011) and for the 2016
#'     Release (2000 - 2014).
#' @references For the 2013 release: {Timmer, Marcel P. (ed) (2012),
#'     "The World Input-Output Database (WIOD): Contents Sources and Methods",
#'     WIOD Working Paper Number 10. Available \href{http://www.wiod.org/publications/papers/wiod10.pdf}{here}.}
#'
#' For the 2016 Release: {Timmer, M. P., Dietzenbacher, E., Los, B.,
#'     Stehrer, R. and de Vries, G. J. (2015),
#'     "An Illustrated User Guide to the World Input-Output Database: the Case of Global Automotive Production". Available
#'     \href{http://dx.doi.org/10.1111/roie.12178}{here}.}
#' @seealso \url{http://wwww.wiod.org/} \url{http://qua.st/decompr/docs/wiod/}
#' @examples
#' data(wiot_1995)
#'
#' library(decompr)
#' w95 <- decomp(wiot_1995$inter,
#'               wiot_1995$final,
#'               wiot_1995$countries,
#'               wiot_1995$industries,
#'               wiot_1995$output,
#'               method="leontief")
#'
#' library(gvc)
#'
#' i2e95 <- i2e(w95)
#'
NULL
