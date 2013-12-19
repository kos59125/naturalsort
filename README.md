naturalsort package
===================

The package provides functions related to human natural ordering.

Installation
------------

```r
install.packages("naturalsort")
```

For `devtools` users, run:

```r
install_github("kos59125/naturalsort", subdir="naturalsort")
```

Usage
-----

```r
library(naturalsort)

## Simple example.
text <- c("a1.png", "a2.png", "a10.png")
print(naturalsort(text))
print(sort(text))  # general sort

## Reordering factors in natural order.
## After read.table with stringsAsFactors=TRUE, levels of column of factor is sorted in character order.
## If you prefer natural ordered factor, call read.table with stringsAsFactors=FALSE and creates factor column manually.
data <- read.table(file, header=TRUE, stringsAsFactors=FALSE)
data$SomeFactor <- factor(data$SomeFactor, levels=naturalsort(unique(data$SomeFactor)))
```

