\name{t2p}
\alias{t2p}
% - Also NEED an '\alias' for EACH other topic documented here.
\title{
  Convert Test Statistics into P-Values
  %% ~~function to do ... ~~
}
\description{
  This function converts the permutation distribution of a test statistic into p-values, one for each permutation. The resulting array of p-values is suitable for nonparametric combination.
  %% ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
  t2p(T)
}
% - maybe also 'usage' for other objects documented here.
\arguments{
\item{T}{
    %% ~~Describe \code{T} here~~
    A vector or array containing the distribution of a test statistic across permutations. If it is an array the first dimension must index permutations.
  }
}
\details{
  For each permutation, the value of the test statistic is compared to its distribution across permutations. The (estimated) p-value for that permutation is the proportion of permutations
  %% ~~ If necessary, more details than the description above ~~
}
\value{
  %% ~Describe the value returned
  %% If it is a LIST, use
  %% \item{comp1 }{Description of 'comp1'}
  %% \item{comp2 }{Description of 'comp2'}
  %%   ...
  An array of p-values
}

\author{
  Devin Caughey <devin.caughey@gmail.com>
}

\note{
  Derived from Pesarin and Salmaso's \code{t2p} function (http://www.wiley.com/legacy/wileychi/pesarin/supp/R_functions.zip).
}

\references{
  Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
