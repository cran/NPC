\name{open01}
\alias{open01}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Map P-Values to Open Unit Interval
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
This function maps a vector of p-values to the open unit interval (that is, it bounds them away from 0 and 1). The interval approaches [0,1] as B (the number of permutations) increases. Intended as input for a p-value combining function.
}
\usage{
open01(p, B)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
%%     ~~Describe \code{p} here~~
Vector of p-values
}
  \item{B}{
%%     ~~Describe \code{B} here~~
Number of samples from the permutation space
}
}

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
Vector of transformed p-values
}
\references{
%% ~put references to the literature/web site here ~
Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.
}
\author{
%%  ~~who you are~~
Devin Caughey <devin.caughey@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
