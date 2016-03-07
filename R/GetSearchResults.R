
#' Make request to Zillow API GetSearchResults Web Service
#'
#' The GetSearchResults API finds a property for a specified address. The
#' content returned contains the address for the property or properties as well
#' as the Zillow Property ID (ZPID) and current Zestimate. It also includes the
#' date the Zestimate was computed, a valuation range and the Zestimate ranking
#' for the property within its ZIP code.
#'
#' @param address The address of the property to search. Required.
#' @param citystatezip The city+state combination and/or ZIP code for which to
#'     search. Required.
#' @param rentzestimate Return Rent Zestimate information if available (logical,
#'     default: false).
#' @param zws_id The Zillow Web Service Identifier. Required.
#' @param url URL for the GetSearchResults Web Service. Required.
#'
#' @return
#' @export
#'
#' @examples
GetSearchResults <- function(
    address = NULL, citystatezip = NULL,
    rentzestimate = FALSE,
    zws_id = getOption('ZillowR-zws_id'),
    url = 'http://www.zillow.com/webservice/GetSearchResults.htm'
) {
    validation_errors <- c(
        validate_arg(address, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(citystatezip, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(rentzestimate, inclusion = c(FALSE, TRUE), length_min = 1, length_max = 1),
        validate_arg(zws_id, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(url, required = TRUE, class = 'character', length_min = 1, length_max = 1)
    )

    if (length(validation_errors) > 0) {
        stop(paste(validation_errors, collapse = '\n'))
    }

    request <- url_encode_request(url,
        address = address,
        citystatezip = citystatezip,
        rentzestimate = rentzestimate,
        zws_id = zws_id
    )

    return(request)
}
