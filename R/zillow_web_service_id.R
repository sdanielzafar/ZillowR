
#' @export
get_zillow_web_service_id <- function() {
    getOption('ZillowR-zws_id')
}

#' @export
set_zillow_web_service_id <- function(x) {
    validate_arg(x, required = TRUE, class = 'character', length_min = 1, length_max = 1)
    options('ZillowR-zws_id' = x)
    return(invisible())
}
