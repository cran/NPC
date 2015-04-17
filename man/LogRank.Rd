\name{LogRank}
\alias{LogRank}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Log-Rank Test Statistic
}
\description{
Calculates the difference of means between two groups of observations. The result is intended to be used as a test statistic in a permutation test.
}
\usage{
LogRank(y, tr, tl, event, block, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
Response variable, typically a duration (vector)
}
  \item{tr}{
Treatment variable (vector)
}
  \item{tl}{
The level of treatment variable (e.g., "treated" or 1) that indicates treated observations
}
  \item{event}{
Status variable indicating for each observation whether \code{y} was censored (0 or FALSE) or observed (1 or TRUE).
}
  \item{block}{
Block or stratification variable (vector)
}
  \item{\dots}{
  Additional arguments (included for compatibility but ignored)
  }
}

\value{
A scalar test statistic
}

\author{
Devin Caughey <devin.caughey@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
