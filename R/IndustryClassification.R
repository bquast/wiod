#' Industry classification
#'
#' A data.table named \code{WIOD_IndClass} with the industry classification
#' used in the WIOD 2016 Release.
#'
#' @docType data
#' @usage data(WIOD_IndClass)
#' @format A 69 x 3 data.table
#' @keywords data, industry classification
#' @examples
#' data(WIOD_IndClass)
"WIOD_IndClass"

#' Correspondences to A*64 NACE Rev2 / ISIC Rev4 and Eurostat
#'
#' The WIOD 2016 Release uses an (slightly aggregated) industry
#' classification which is based on the NACE Rev2 / ISIC Rev4 (on
#' 2-digit level, these two classifications coincide). The data.table
#' \code{WIOD_NACErev2} gives a correspondence to these commonly used
#' 64-industries classifications.  Additionally, the WIOD uses a
#' different set of codes for the final demand and valuation
#' columns. \code{WIOD_ESTAT} gives a correspondence of those codes to
#' the codes used by Eurostat.
#' @docType data
#' @usage data(WIOD_Corr)
#' @format A list of two: a 64 x 2 and a 13 x 2 data.table.
#' @keywords data, industry classification, correspondence
#' @examples
#' data(WIOD_Corr)
"WIOD_Corr"
