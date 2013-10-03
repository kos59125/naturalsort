test_that("issue#2: produces an error when all elements are empty character", {
   text <- ""
   expected <- ""
   actual <- naturalsort(text)
   expect_that(actual, equals(expected))
})
