
#' Make request to Zillow API GetRateSummary Web Service
#'
#' The GetRateSummary API returns the current rates per loan type -- as well as
#' rates from a week ago -- from Zillow Mortgage Marketplace. Current supported
#' loan types are 30-year fixed, 15-year fixed, and 5/1 ARM. Rates are computed
#' from real quotes borrowers receive from lenders just seconds before the rate
#' data is returned. The GetRateSummary API returns rates for a specific state
#' if the optional state parameter is used.
#'
#' @param state The state for which to return average mortgage rates. Two-letter
#'     state abbreviations should be used (AK, AL, AR, AZ, CA, CO, CT, DE, FL,
#'     GA, HI, IA, ID, IL, IN, KS, KY, LA, MA, MD, ME, MI, MN, MO, MS, MT, NC,
#'     ND, NE, NH, NJ, NM, NV, NY, OH, OK, OR, PA, RI, SC, SD, TN, TX, UT, VA,
#'     VT, WA, DC, WI, WV, WY). If omitted, national average mortgage rates are
#'     returned.
#' @param zws_id The Zillow Web Service Identifier. Required.
#' @param url URL for the GetRateSummary Web Service. Required.
#'
#' @return
#' @export
#'
#' @examples
GetRateSummary <- function(

    state = NULL,
    zws_id = getOption('ZillowR-zws_id'),
    url = 'http://www.zillow.com/webservice/GetRateSummary.htm'
) {
    validation_errors <- c(
        validate_arg(state, class = 'character', inclusion = c(state.abb, 'DC'), length_min = 1, length_max = 1),
        validate_arg(zws_id, required = TRUE, class = 'character', length_min = 1, length_max = 1),
        validate_arg(url, required = TRUE, class = 'character', length_min = 1, length_max = 1)
    )

    if (length(validation_errors) > 0) {
        stop(paste(validation_errors, collapse = '\n'))
    }

    request <- url_encode_request(url,
        'state' = state,
        'zws-id' = zws_id
    )

    return(request)
}
