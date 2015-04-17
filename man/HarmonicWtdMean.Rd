\name{HarmonicWtdMean}
\alias{HarmonicWtdMean}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Block-Specific Mean Differences Weighted by Harmonic Mean Sample Size
}
\description{
Calculates the weighted average of the block-specific differences of means, where the weights are proportional to the harmonic mean cluster size in the block (Donner and Klar, 1993; Bowers, Fredrickson and Hansen, 2010). The result is intended to be used as a test statistic in a permutation test.
}
\usage{
HarmonicWtdMean(y, tr, tl, block, ...)
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
  \item{block}{
Blocking/stratification variable (vector)
}
  \item{\dots}{
  Additional arguments (included for compatibility but ignored)
  }
}

\references{
Bowers, Jake, Mark Fredrickson and Ben Hansen. 2010. ``RItools: Randomization Inference Tools.'' R package version 0.1-11. http://www.jakebowers.org/RItools.html.

Donner, Allan and Neil Klar. 1993. ``Confidence Interval Construction for Effect Measures Arising From Cluster Randomization Trials.'' Journal of Clinical Epidemiology 46(2):123-131.
}
\author{
Devin Caughey <devin.caughey@gmail.com>
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
