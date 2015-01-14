snv <- function(spec) {
  spec.snv <- scale(t(spec), center = TRUE, scale = TRUE)
  spec.snv <- t(spec.snv)
  return(spec.snv)
}
