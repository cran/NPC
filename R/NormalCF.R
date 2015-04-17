NormalCF <- function (p, B) {
  ## Liptak combining function
  -sum(qnorm(open01(p, B)))
}
