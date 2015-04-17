\name{ProductCF}
\alias{ProductCF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fisher's Product Combining Function
}
\description{
Returns the Fisher combination of vector of p-values, to be used as a global test statistic.
}
\usage{
ProductCF(p, B)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
Vector of p-values
}
  \item{B}{
  Number of samples from permutation space, for transformation to the open (0, 1) interval.
  }
}

\value{
A scalar global test statistic
}
\references{
%% ~put references to the literature/web site here ~
Fisher, R. A. (1932) Statistical Methods for Research Workers. London: Oliver and Boyd, 4th edn.

Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.
}
\author{
Devin Caughey <devin.caughey@gmail.com>
}
\note{
%%  ~~further notes~~
The function is labeled the "product" function because the Fisher combination is permutationally equivalent to the product of the p-values.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
