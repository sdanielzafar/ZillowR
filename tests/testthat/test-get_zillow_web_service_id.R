
context('get_zillow_web_service_id')

test_that("'get_zillow_web_service_id' returns NULL if ZillowR-zws_id option unset", {
    zws_id <- getOption('ZillowR-zws_id')
    options('ZillowR-zws_id' = NULL)
    expect_equivalent(get_zillow_web_service_id(), NULL)
    options('ZillowR-zws_id' = zws_id)
    rm(zws_id)
})

test_that("'get_zillow_web_service_id' gets ZillowR-zws_id option", {
    zws_id <- getOption('ZillowR-zws_id')
    options('ZillowR-zws_id' = 'foo')
    expect_equivalent(get_zillow_web_service_id(), 'foo')
    options('ZillowR-zws_id' = zws_id)
    rm(zws_id)
})
