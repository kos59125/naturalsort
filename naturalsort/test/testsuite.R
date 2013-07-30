stopifnot(require(testthat))

## load functions
source(file.path((function(name) {
   path <- (function() attr(body(sys.function(-1)), "srcfile"))()$filename
   path <- file.path(dirname(path), "..", "R", name)
   normalizePath(path, .Platform$file.sep)
})("naturalsort.R")), encoding="UTF-8")

test_that("checks naturalorder(decreasing=FALSE, na.last=TRUE)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(5L, 1L, 2L, 3L, 4L)
   actual <- naturalorder(text, decreasing=FALSE, na.last=TRUE)
   expect_that(actual, equals(expected))
})

test_that("checks naturalorder(decreasing=TRUE, na.last=TRUE)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(3L, 2L, 1L, 5L, 4L)
   actual <- naturalorder(text, decreasing=TRUE, na.last=TRUE)
   expect_that(actual, equals(expected))
})

test_that("checks naturalorder(decreasing=FALSE, na.last=FALSE)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(4L, 5L, 1L, 2L, 3L)
   actual <- naturalorder(text, decreasing=FALSE, na.last=FALSE)
   expect_that(actual, equals(expected))
})

test_that("checks naturalorder(decreasing=TRUE, na.last=FALSE)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(4L, 3L, 2L, 1L, 5L)
   actual <- naturalorder(text, decreasing=TRUE, na.last=FALSE)
   expect_that(actual, equals(expected))
})

test_that("checks naturalorder(decreasing=FALSE, na.last=NA)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(5L, 1L, 2L, 3L)
   actual <- naturalorder(text, decreasing=FALSE, na.last=NA)
   expect_that(actual, equals(expected))
})

test_that("checks naturalorder(decreasing=TRUE, na.last=NA)", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c(3L, 2L, 1L, 5L)
   actual <- naturalorder(text, decreasing=TRUE, na.last=NA)
   expect_that(actual, equals(expected))
})

test_that("naturalorder(decreasing=NA) throws an error", {
   expect_that(naturalorder(decreasing=NA), throws_error())
})

test_that("naturalorder for one-character-length vector", {
   text <- c("a", NA, "1")
   expected <- order(text)
   actual <- naturalorder(text)
   expect_that(actual, equals(expected))
})

test_that("naturalorder is stable", {
   text <- c("01", "1", "001", "1", "01")
   expected <- c(3L, 1L, 5L, 2L, 4L)
   actual <- naturalorder(text)
   expect_that(actual, equals(expected))
})

test_that("checks naturalsort() with default parameters", {
   text <- c("a1.png", "a2.png", "a10.png", NA, "a1-1.png")
   expected <- c("a1-1.png", "a1.png", "a2.png", "a10.png")  # na.last=NA by default
   actual <- naturalsort(text)
   expect_that(actual, equals(expected))
})
