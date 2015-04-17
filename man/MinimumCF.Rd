\name{MinimumCF}
\alias{MinimumCF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Tippett's Minimum Combining Function
}
\description{
Returns the minimum (multiplied by -1) of a vector of p-values, to be used as a global test statistic.
}
\usage{
MinimumCF(p, B)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
Vector of p-values
}
  \item{B}{
  Number of samples from permutation space (not used by this combining function)
  }
}

\value{
A scalar global test statistic
}
\references{
%% ~put references to the literature/web site here ~
Tippett, L. H. C. (1931) The Methods of Statistics. London: Williams & Norgate, 1st edn.

Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.
}
\author{
Devin Caughey <devin.caughey@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
