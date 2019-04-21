
#' @importFrom XML xmlTreeParse xmlRoot xmlToList
preprocess_response <- function(x) {

    y <- xml2::as_list(xml2::read_xml(x))[[1]]

    list(
        request = y[['request']],
        message = y[['message']],
        response = y[['response']]
    )
}
