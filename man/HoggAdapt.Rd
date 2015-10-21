\name{HoggAdapt}
\alias{HoggAdapt}
% - Also NEED an '\alias' for EACH other topic documented here.
\title{
  Adaptive Choice of Rank-Based Test Statistic
}
\description{
  Implements the recommendations of Hogg et al. (1975) for data-driven selection of rank-based permutation test statistics. It is designed to select a powerful test statistic given the tailweight and skew of the distribution of \code{y}. Best used for continuous distributions that differ in location only (i.e., under a constant treatment effect assumption).
}
\usage{
  HoggAdapt(y)
}
% - maybe also 'usage' for other objects documented here.
\arguments{
\item{y}{
    response variable (numeric vector)
  }
}

\value{
  \code{fun}, a function designed to be used by the function \code{NPC}
}
\references{
  Hogg, Robert V., Doris M. Fisher, and Ronald H. Randles. 1975. ``A Two-Sample Adaptive Distribution-Free Test.'' Journal of the American Statistical Association 70 (351): 656--661.
}
\author{
  Devin Caughey <devin.caughey@gmail.com>
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
  \code{\link{NPC}}
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
