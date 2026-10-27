#' codon_chopper
#'
#' @param dna_string dna string to chop
#' @param start index to start chopping at
#'
#' @returns codons of the dna string
#' @export
#'
#'
codon_chopper <- function(dna_string, start = 1){
  string_length <- nchar(dna_string)
  codons <- substring(dna_string,
                      first = seq(from = start, to = string_length-3+1, by = 3),
                      last = seq(from = 3+start-1, to = string_length, by = 3))
  return(codons)
}
