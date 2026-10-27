#' table_to_string
#'
#' @param codons an index for the table containing codons
#'
#' @returns a string of the table
#' @export
#'
table_to_string <- function(codons){
  result <- paste0(codon_table[codons], collapse = "")
  return(result)
}
