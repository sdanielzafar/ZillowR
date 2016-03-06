
context('GetChart')

test_that('errors are thrown with invalid input', {
    expect_error(GetChart(), '\\b(?:is|are)\\b required')
})
