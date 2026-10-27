#' RNA Generator
#'
#' @param DNAseq is a string containing a DNA sequence
#'
#' @returns the corresponding RNA sequence
#' @export
#'
#' @examples
#' gen_RNA("CGATTAGC")
gen_RNA <- function(DNAseq){
  RNAseq <- gsub("T", "U", DNAseq)
  return(RNAseq)
}
