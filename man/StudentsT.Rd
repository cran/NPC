\name{StudentsT}
\alias{StudentsT}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
Student's T Statistic
}
\description{
Calculates the T statistic of the difference between treated and control. The result is intended to be used as a test statistic in a permutation test.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
StudentsT(y, tr, tl, ...)
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
\details{
%%  ~~ If necessary, more details than the description above ~~
As Chung and Romano (2013) show, using the studentized difference of means as a permutation test statistic yields an asymptotically valid test of the "weak null" of mean equality between groups.
}
\value{
A scalar test statistic
}
\references{
%% ~put references to the literature/web site here ~
Chung, E. and Romano, J. P. (2013) Exact and asymptotically robust permutation tests. Annals of Statistics, 41, 484-507.
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
