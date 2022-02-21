\name{minimax-package}
\alias{minimax-package}
\docType{package}
\title{
Minimax distribution family
}
\description{
Standard functions to calculate probabilities, densities and quantiles
for the minimax family, and to generate pseudo-random values.
}
\details{
\tabular{ll}{
Package: \tab minimax\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-07-22\cr
License: \tab GPL-2|GPL-3\cr
LazyLoad: \tab yes\cr
}

}
\author{
Bill Venables

Maintainer: Bill Venables <Bill.Venables@gmail.com>
}
\references{
  See \href{http://stats-www.open.ac.uk/TechnicalReports/minimax.pdf}{this
    document} for a detailed discussion.
}
\keyword{ distribution }
\seealso{
\code{\link{punif}}, \code{\link{pbeta}}.
}
\examples{
p <- pminimax(0:10/10, 1:5, 2)
q <- qminimax(p, 1:5, 2)
(d <- dminimax(matrix(0.5, 2, 2), 1:4, 2:3))

set.seed(123)
r <- rminimax(letters, 2, 3)
}
