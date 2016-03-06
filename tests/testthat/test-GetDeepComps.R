
context('GetDeepComps')

test_that('errors are thrown with invalid input', {
    expect_error(GetDeepComps(), '\\b(?:is|are)\\b required')
})
