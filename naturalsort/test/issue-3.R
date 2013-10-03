test_that("issue#3: produces an error when input is empty", {
   text <- character(0)
   expected <- character(0)
   actual <- naturalsort(text)
   expect_that(actual, equals(expected))
})
