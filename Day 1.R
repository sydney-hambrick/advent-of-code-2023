day1 <- as.vector(readLines("Day 1.txt", warn=FALSE))
converter <- function(i){
  str_replace_all(i, c("one"="o1e", "two"="t2o", "three"="t3e", "four"="f4r", "five"="f5e", "six"="s6x", "seven"="s7n", "eight"="e8t", "nine"="n9e"))
}
day1 <- lapply(day1, converter)
numbers <- function(i){
  as.numeric(paste(unlist(str_extract_all(i, "\\d"))[1], tail(unlist(str_extract_all(i, "\\d")), n=1), sep = ""))
}
nums <- sum(sapply(day1, numbers))