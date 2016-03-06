
context('GetUpdatedPropertyDetails')

test_that('errors are thrown with invalid input', {
    expect_error(GetUpdatedPropertyDetails(), '\\b(?:is|are)\\b required')
})
