\name{minimax}
\alias{minimax}
\alias{dminimax}
\alias{pminimax}
\alias{qminimax}
\alias{rminimax}
\title{
  Minimax distribution family
}
\description{
  Four short functions to provide density, cumulative probability,
  quantile and random generation computational facilities for the
  minimax family of distributions.
}
\usage{
dminimax(x, a = 1, b = 1, log = FALSE)
pminimax(x, a = 1, b = 1)
qminimax(y, a = 1, b = 1)
rminimax(n, a = 1, b = 1)
}
\arguments{
  \item{x}{
    Numeric vector giving the values at which the densities or cumulative
    probabilities are to be calculated.
  }
  \item{y}{
    Numeric vector giving the values at which the quantiles are to be
    calculated.  Values must be between \code{0} and \code{1}.
  }
  \item{n}{
    The number of pseudo-random values to be generated. If
    \code{length(n) = 1}, it must be a non-negative number; if
    \code{length(n) > 1}, the value for \code{n} is taken to be
    \code{length(n)}. 
  }   
  \item{a, b}{
    Numeric vectors giving the parameters of the distribution. Values
    must be positive.
}
  \item{log}{
    Logical scalar.  Should the log-density be returned rather than the
    density itself?
}
}
\details{
  The minimax family distributions is a two-parameter with support
  [0,1].  It has properties very like the beta family, though is
  computationally much more tractible. Both beta and minimax families
  have the uniform(0,1) distribution as a special case.  For the minimax
  family, this is the default case. 

  This package provides the standard four functions for handling the
  distribution in \code{R} using the standard prefix naming convention.

  The functions are vectorized with respect to the arguments \code{x},
  \code{y}, \code{a}, and \code{b}, with short arguments recycled to
  match the length of any longer ones.  
}
\value{
  A vector of density, probability, quantile or pseudo-random values,
  respectively.  Shape and name attributes of the first argument are
  preserved in the result.
}
\references{
  See \href{http://stats-www.open.ac.uk/TechnicalReports/minimax.pdf}{this
    document} for a detailed discussion.
}
\author{
  Bill Venables
}
\note{
  The functions are all written in pure \code{R} code.
}

\seealso{
\code{\link{punif}}, \code{\link{pbeta}}.
}
\examples{
p <- pminimax(0:10/10, 1:5, 2)
q <- qminimax(p, 1:5, 2)
(d <- dminimax(matrix(0.5, 2, 2), 1:4, 2:3))

set.seed(123)
(r <- rminimax(letters, 2, 3))
}
\keyword{ distribution }
