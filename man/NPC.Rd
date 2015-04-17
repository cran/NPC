\name{NPC}
\alias{NPC}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Nonparametric Combination of Dependent Hypothesis Tests
}
\description{
This function conducts multiple hypothesis tests under the sharp null of no effects and combines the results into a single global p-value.
}
\usage{
NPC(data, keep = TRUE, tr.var, tr.label, y.vars, comb.fun = "ProductCF",
    n.perms = 1000, block.var = NULL, clust.var = NULL, event.var = NULL,
    alternative = "greater", seed = 1, na.rm = TRUE, FWE.adj = TRUE,
    step.down = identical(comb.fun, "MinimumCF"),
    test.statistic = "StudentsT", return.matrix = FALSE, print.steps = TRUE,
    adapt.test = logical(length(y.vars)))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{data}{
%%     ~~Describe \code{data} here~~
Data frame with treatment, response, and other variables
}
  \item{keep}{
%%     ~~Describe \code{keep} here~~
Subset of observations (default keeps all)
}
  \item{tr.var}{
%%     ~~Describe \code{tr.var} here~~
Name of treatment variable (character)
}
  \item{tr.label}{
%%     ~~Describe \code{tr.label} here~~
Level of 'tr.var' indicating treated units (character)
}
  \item{y.vars}{
%%     ~~Describe \code{y.vars} here~~
Names of response variables (character)
}
  \item{comb.fun}{
%%     ~~Describe \code{comb.fun} here~~
Combining function (character or function)
}
  \item{n.perms}{
%%     ~~Describe \code{n.perms} here~~
Number of permutations
}
  \item{block.var}{
%%     ~~Describe \code{block.var} here~~
Variable defining blocks within which to restrict permutations (character)
}
  \item{clust.var}{
%%     ~~Describe \code{clust.var} here~~
Variable defining clusters of observations assigned to treatment en bloc (character)
}
  \item{event.var}{
%%     ~~Describe \code{event.var} here~~
Logical variable indicating whether duration variables were observed rather than
censored (character)
}
  \item{alternative}{
%%     ~~Describe \code{expect.dir} here~~
Scalar or vector indicating the alternative hypotheses ("greater", "less", or "two.sided"). If "less", test statistics are multiplied by -1. If "two.sided", the absolute value is used.
}
  \item{seed}{
%%     ~~Describe \code{seed} here~~
Random seed (numeric)
}
  \item{na.rm}{
%%     ~~Describe \code{na.rm} here~~
Delete observations with missing values? (logical)
}
  \item{FWE.adj}{
%%     ~~Describe \code{FWE.adj} here~~
Calculate FWE-adjusted p-values? (logical)
}
  \item{step.down}{
%%     ~~Describe \code{step.down} here~~
If performing FWE adjustment, use stepdown MinP? (logical)
}
  \item{test.statistic}{
%%     ~~Describe \code{test.statistic} here~~
Vector or list of test statistic functions (possibly quoted) for marginal tests. If single value is given, then it is used for all marginal tests.
}
  \item{return.matrix}{
%%     ~~Describe \code{return.matrix} here~~
Return the permutation distribution of test statistics and p-values? (logical)
}
  \item{print.steps}{
%%     ~~Describe \code{print.steps} here~~
Print progress of the function? (logical)
}
  \item{adapt.test}{
%%     ~~Describe \code{adapt.test} here~~
Use the adaptive test of Hogg et al. (1975)? (logical vector)
}
}

\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
\item{p.values }{vector of marginal p-values plus the joint NPC p-value}
\item{p.matrix }{(optional) matrix containing the permutation distribution of marginal p-values}
\item{T.matrix }{(optional) matrix containing the permutation distribution of test statistics}
}
\references{
Caughey, Devin, Allan Dafoe, and Jason Seawright. 2014. ``Global Tests of Complex Hypotheses: A Nonparametric Framework for Testing Elaborate Theories.'' Unpublished manuscript.

Chung, EunYi, and Joseph P. Romano. 2013. ``Exact and Asymptotically Robust Permutation Tests.'' Annals of Statistics 41 (2): 484-507.

Hogg, Robert V., Doris M. Fisher, and Ronald H. Randles. 1975. ``A Two-Sample Adaptive Distribution-Free Test.'' Journal of the American Statistical Association 70 (351): 656-661.

Pesarin, Fortunato, and Luigi Salmaso. 2010. Permutation Tests for Complex Data. Chichester, UK: Wiley.
}
\author{
Devin Caughey <devin.caughey@gmail.com>
}


%% ~Make other sections like Warning with \section{Warning }{....} ~

\examples{
## Required by NPC package
require(permute)
require(plyr)
require(dplyr)
require(coin)
require(matlab)
## Required for this example
require(mvtnorm)
require(xtable)
require(car)

## COVARIANCE = CORRELATION = 0.25
cov <- 0.25
N <- 8
Tr <- c(rep(0, 4), rep(1, 4))
d1 <- 1
d2 <- 1
d3 <- 1
sd <- 1
sigma <-
    matrix(c(1, cov, cov, cov, 1, cov, cov, cov, 1), ncol = 3)
## Create error matrix
set.seed(2)
ee <- rmvnorm(N, c(0, 0, 0), sigma)
mean(c(cor(ee)[1, 2], cor(ee)[3, 2], cor(ee)[1, 3]))

Y1 <- -.5 + Tr*d1 + ee[, 1]
Y2 <- -.5 + Tr*d2 + ee[, 2]
Y3 <- -.5 + Tr*d3 + ee[, 3]
## Create data
(ex.dta <- data.frame(Tr, Y1, Y2, Y3))
(diffs <- round(colMeans(subset(ex.dta, Tr == 1, -Tr)) -
                colMeans(subset(ex.dta, Tr == 0, -Tr)), 2))
mean(diffs)
## NPC
npc.out <- NPC(data=ex.dta, tr.var="Tr", tr.label=1,
               y.vars=c("Y1", "Y2", "Y3"), n.perms=1000,
               alternative = "greater", seed=1, comb.fun="NormalCF",
               test.statistic="DiffMeans", FWE.adj=FALSE)
round(npc.out$p.value, 2) ## one-sided
##>   Y1   Y2   Y3  NPC
##> 0.24 0.05 0.07 0.08

## Compare with T-tests and MANOVA
t.test(Y1 ~ Tr, var.equal = TRUE, alternative = "less")
t.test(Y2 ~ Tr, var.equal = TRUE, alternative = "less")
t.test(Y3 ~ Tr, var.equal = TRUE, alternative = "less")
Anova(lm(cbind(Y1, Y2, Y3) ~ Tr)) ## two-sided
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
