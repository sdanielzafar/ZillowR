
#' Make request to Zillow API GetUpdatedPropertyDetails Web Service
#'
#' For a specified property, the GetUpdatedPropertyDetails API returns all of
#' the home facts that have been edited by the home's owner or agent. The result
#' set contains the following attributes:
#'
#' \itemize{
#'   \item Property address
#'   \item Zillow property identifier
#'   \item Posting details such as the agent name, MLS number, price, and
#'       posting type (For Sale or Make Me Move(tm))
#'   \item Up to five photos of the property
#'   \item Updated home facts such as beds, baths, square footage, home
#'       description, and neighborhood and school names
#' }
#'
#' @param zpid The Zillow Property ID for the property for which to obtain
#'     information. Required.
#' @param zws_id The Zillow Web Service Identifier. Required.
#' @param url URL for the GetUpdatedPropertyDetails Web Service. Required.
#'
#' @return
#' @export
#'
#' @examples
GetUpdatedPropertyDetails <- function(
    zpid = NULL,

    zws_id = getOption('ZillowR-zws_id'),
    url = 'http://www.zillow.com/webservice/GetUpdatedPropertyDetails.htm'
) {
    validation_errors <- c(
        validate_arg(zpid, required = TRUE, format = '^\\d+$', length_min = 1, length_max = 1),
        validate_arg(zws_id, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(url, required = TRUE, class = 'character', length_min = 1, length_max = 1)
    )

    if (length(validation_errors) > 0) {
        stop(paste(validation_errors, collapse = '\n'))
    }

    request <- url_encode_request(url,
        'zpid' = zpid,
        'zws-id' = zws_id
    )

    return(request)
}
