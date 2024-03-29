


#' Answer function
#'
#' @param str Mind the wording
#'
#' @return The Answer
#' @export
answer <- function(str){
  distance <- base::attr(utils::adist(x = str,
                         y ="the Ultimate Question of Life, the Universe,
                         and Everything",
                         ignore.case = TRUE,
                         count = TRUE),"counts")
  if (distance[1]>distance[2]){
    sign <- -1
  } else {
    sign <- 1
  }
  42*(1+distance[1])*(distance[2]+1)*(1+distance[3])*sign
}
