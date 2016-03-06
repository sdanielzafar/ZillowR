
context('GetDeepSearchResults')

test_that('errors are thrown with invalid input', {
    expect_error(GetDeepSearchResults(), '\\b(?:is|are)\\b required')
})
