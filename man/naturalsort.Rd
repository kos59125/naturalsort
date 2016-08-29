\name{naturalsort}
\alias{naturalsort}
\alias{naturalorder}
\title{
Natural Ordering Sort
}
\description{
Natural ordering is a kind of alphanumerical ordering.
\code{naturalorder} returns the order of the argument character vector in human natural ascending or descending order.
\code{naturalsort} returns the sorted vector.
}
\usage{
naturalorder(text, decreasing=FALSE, na.last=TRUE)

naturalsort(text, decreasing=FALSE, na.last=NA)
}
\arguments{
  \item{text}{a character vector to sort.}
  \item{decreasing}{logical.}
  \item{na.last}{logical. If \code{NA}, \code{NA}s will be removed of the result.}
}
\details{
The functions handle adjascent digits as an integer during comparison.
For example, a vector \code{c("a-1.png", "a-2.png", "a-10.png")} seems natural for humans.
If you apply \code{sort} function to the vector, the result will be \code{c("a-1.png", "a-10.png", "a-2.png")} owing to third and fourth characters of the elements (1., 2., 10 in the case).
\code{naturalsort} considers not digits but numbers (1, 2, 10 in the case) so that results should look natural for humans.
}
\value{
For \code{naturalorder}, the results are indices of vector elements in natural order.

For \code{naturalsort}, the results are sorted vectors.
}
\examples{
text <- c("a-1.png", "a-2.png", "a-10.png")
print(sort(text))
print(naturalsort(text))
}
\keyword{ naturalsort }
\keyword{ naturalorder }
