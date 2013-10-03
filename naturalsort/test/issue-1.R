test_that("issue#1: returns several NAs when argument is just one element", {
   text <- "a-10.png"
   expected <- "a-10.png"
   actual <- naturalsort(text)
   expect_that(actual, equals(expected))
})
