
context('GetZestimate')

test_that('errors are thrown with invalid input', {
    expect_error(GetZestimate(), '\\b(?:is|are)\\b required')
})
