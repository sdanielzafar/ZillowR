
#' Make request to Zillow API GetDeepComps Web Service
#'
#' The GetDeepComps API returns a list of comparable recent sales for a
#' specified property. The result set returned contains the address, Zillow
#' property identifier, and Zestimate for the comparable properties and the
#' principal property for which the comparables are being retrieved. This API
#' call also returns rich property data for the comparables.
#'
#' @param zpid The Zillow Property ID for the property for which to obtain
#'     information. Required.
#' @param count The number of comparable recent sales to obtain (between 1 and
#'     25)
#' @param rentzestimate Return Rent Zestimate information if available (logical,
#'     default: false).
#' @param zws_id The Zillow Web Service Identifier. Required.
#' @param url URL for the GetDeepComps Web Service. Required.
#'
#' @return
#' @export
#'
#' @examples
GetDeepComps <- function(
    zpid = NULL, count = NULL,
    rentzestimate = FALSE,
    zws_id = getOption('ZillowR-zws_id'),
    url = 'http://www.zillow.com/webservice/GetDeepComps.htm'
) {
    validation_errors <- c(
        validate_arg(zpid, required = TRUE, format = '^\\d+$', length_min = 1, length_max = 1),
        validate_arg(count, required = TRUE, inclusion = 1:25, length_min = 1, length_max = 1),
        validate_arg(rentzestimate, inclusion = c(FALSE, TRUE), length_min = 1, length_max = 1),
        validate_arg(zws_id, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(url, required = TRUE, class = 'character', length_min = 1, length_max = 1)
    )

    if (length(validation_errors) > 0) {
        stop(paste(validation_errors, collapse = '\n'))
    }
}
