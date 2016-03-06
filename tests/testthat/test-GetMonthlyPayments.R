
context('GetMonthlyPayments')

test_that('errors are thrown with invalid input', {
    expect_error(GetMonthlyPayments(), '\\b(?:is|are)\\b required')
})
