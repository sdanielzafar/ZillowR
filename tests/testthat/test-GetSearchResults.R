
context('GetSearchResults')

test_that('errors are thrown with invalid input', {
    expect_error(GetSearchResults(), '\\b(?:is|are)\\b required')
})
