\name{RankSumWithNA}
\alias{RankSumWithNA}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Rank-Sum Test Statistic for MCAR Data
}
\description{
This function calculates a test statistic analogous to the rank sum, but adjusted to accommodate missing responses. The result is intended to be used as a test statistic in a permutation test. Under the assumption that the data are missing completely at random, the resulting permutation test is an "nearly" exact test of distributional equality of the observed responses (Pesarin and Salmaso 2010, 234--44).
}
\usage{
RankSumWithNA(y, tr, tl, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
Response variable (vector)
}
  \item{tr}{
Treatment variable (vector)
}
  \item{tl}{
The level of treatment variable (e.g., "treated" or 1) that indicates treated observations
}
  \item{\dots}{
  Additional arguments (included for compatibility but ignored)
  }
}

\value{
A scalar test statistic
}
\references{
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
