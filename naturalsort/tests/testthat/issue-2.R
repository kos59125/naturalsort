context("issue#2")

test_that("Produces an error when all elements are empty character", {
   text <- ""
   expected <- ""
   actual <- naturalsort(text)
   expect_that(actual, equals(expected))
})
