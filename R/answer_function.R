


#' Answer function
#'
#' @param str
#'
#' @return The Answer
#' @export
answer <- function(str){
  distance <- attr(adist(x = str,
                         y ="the Ulimate Question of Life, the Universe, and Everything",
                         ignore.case = TRUE,
                         count = TRUE),"counts")
  if (distance[1]>distance[2]){
    sign <- -1
  } else {
    sign <- 1
  }
  42*(1+distance[1])*(distance[2]+1)*(1+distance[3])*sign
}
