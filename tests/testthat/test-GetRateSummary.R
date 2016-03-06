
context('GetRateSummary')

test_that('errors are thrown with invalid input', {
    expect_error(GetRateSummary(), '\\b(?:is|are)\\b required')
})
