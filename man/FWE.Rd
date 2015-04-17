\name{FWE}
\alias{FWE}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
FWE Adjustment Using Closed Testing or Stepdown MinP
}
\description{
This function adjusts a set of p-values to control the family-wise error rate (FWE). It does so using either closed testing (Marcus, Peritz, and Gabriel 1976) or the stepdown MinP algorithm (Westfall and Young 1993, 66--7). Because these methods take into account the dependence among the p-values, they are much less conservative than traditional FWE adjustments like the Bonferroni correction. Closed testing becomes very computationally intensive as the number of p-values increases.
}
\usage{
FWE(PV, stepdown = TRUE, cfun = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{PV}{
A matrix containing the permutation distribution of (pseudo) p-values. The first row should be the observed p-values and the remaining rows the permutation distribution.
}
  \item{stepdown}{
Use stepdown MinP to adjust p-values? (logical)
}
  \item{cfun}{
Combining function to be used for closed-testing adjustment (function)
}
}

\references{
Basso, Dario, Fortunato Pesarin, Luigi Salmaso, and Aldo Solar. 2009. Permutation Tests for Stochastic Ordering and ANOVA: Theory and Applications with R. London: Springer.

Marcus, Ruth, Eric Peritz, and K. R. Gabriel. 1976. ``On Closed Testing Procedures with Special Reference to Ordered Analysis of Variance.'' Biometrika 63 (3): 655-660.

Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.

Westfall, P. H., and S. S. Young. 1993. Resampling-Based Multiple Testing: Examples and
Methods for p-Value Adjustment. New York: Wiley.
}
\author{
Devin Caughey <devin.caughey@gmail.com>
}
\note{
Derived from the \code{FWE.minP} function (http://www.wiley.com/legacy/wileychi/pesarin/supp/R_functions.zip) provided by Pesarin and Salmaso (2010) and the \code{closetest} function (http://static.gest.unipd.it/~salmaso/web/clostest.r) provided by Basso et al. (2009).
}

%% ~Make other sections like Warning with \section{Warning }{....} ~


% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
