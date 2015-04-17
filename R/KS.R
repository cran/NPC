KS <- function (y, tr, tl, ...) {
  ## Kolmogorov-Smirnov statistic
  suppressWarnings(ks.test(y[tr==tl], y[tr!=tl], exact=FALSE,
                           alternative="two.sided")$statistic)
}
