
context('GetComps')

test_that('errors are thrown with invalid input', {
    expect_error(GetComps(), '\\b(?:is|are)\\b required')
})
