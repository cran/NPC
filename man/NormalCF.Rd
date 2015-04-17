\name{NormalCF}
\alias{NormalCF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Liptak's Normal Combining Function
}
\description{
Returns the negative of the sum of the normal quantiles of a vector of p-values, to be used as a global test statistic.
}
\usage{
NormalCF(p, B)
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
Liptak, I. (1958) On the combination of independent tests. Magyar Tudom\'{a}nyos Akad\'{e}mia Matematikai Kutat\'{o} Int\'{e}z\'{e}nek K\"{o}zlom\'{e}nyei, 3, 127-141.

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
