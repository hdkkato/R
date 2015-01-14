sgder <- function(spec, m, np)
{
  if (!require(signal))
    install.packages("signal")
  require(signal)
  splength <- dim(spec)[2]
  spec.sgder <- apply(spec, 1, sgolayfilt, m = m, n = np)
  spec.sgder <- t(spec.sgder)
  spec.sgder[, 1:np] <- 0
  spec.sgder[, (splength-np):splength] <- 0
  return(spec.sgder)
}
