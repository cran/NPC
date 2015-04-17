\name{t2p}
\alias{t2p}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Convert Test Statistics into P-Values
%%  ~~function to do ... ~~
}
\description{
This function converts the permutation distribution of a test statistic into p-values, one for each permutation. The resulting array of p-values is suitable for nonparametric combination.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
t2p(T)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{T}{
%%     ~~Describe \code{T} here~~
An vector or array containing the distribution of a test statistic across permutations. If it is an array the first dimension must index permutations.
}
}
\details{
For each permutation, the value of the test statistic is compared to its distribution across permutations. The (estimated) p-value for that permutation is the proportion of permutations
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
An array of p-values
}

\author{
Devin Caughey <devin.caughey@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~


\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (T)
{
    if (is.null(dim(T))) {
        T <- array(T, dim = c(length(T), 1))
    }
    otherDims <- 2:length(dim(T))
    pvalue <- function(Tvec) {
        t0 <- Tvec[1]
        Tdist <- Tvec[-1]
        B <- sum(!is.na(Tdist))
        r0 <- sum(Tdist >= t0, na.rm = TRUE)
        Rdist <- B - rank(Tdist, na.last = "keep", ties.method = "min") +
            1
        Pvec <- c(r0, Rdist)/B
        return(Pvec)
    }
    P <- apply(T, otherDims, pvalue)
    return(P)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
