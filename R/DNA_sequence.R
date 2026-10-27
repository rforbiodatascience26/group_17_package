#' DNA sequence
#'
#' @param length length of DNA sequence
#'
#' @returns DNA sequence of size = length
#' @export
#'
#' @examples DNA_sequence(200)
DNA_sequence <- function(length){
  nucleotides <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  sequence <- paste0(nucleotides, collapse = "")
  return(sequence)
}
