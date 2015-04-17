\name{RankSum}
\alias{RankSum}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Wilcoxon's Rank-Sum Statistic
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Calculates the sum of the ranks of the responses of treated units. The result is intended to be used as a test statistic in a permutation test.
}
\usage{
RankSum(y, tr, tl, ...)
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

\author{
Devin Caughey <devin.caughey@gmail.com>
}
\note{
Returns NA if there are any missing values in y or tr.
}
%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
