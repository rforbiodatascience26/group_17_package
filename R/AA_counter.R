#' Amino Acid Counter
#'
#' @param AA_seq is a string of amino acids
#' @importFrom stringr str_split boundary str_count
#' @importFrom ggplot2 ggplot aes geom_col theme_bw theme
#'
#' @returns a plot of amino acid frequencies
#' @export
#'
#' @examples
#' AA_counter("ARNDNRA")
AA_counter <- function(AA_seq){
  AA_pres <- AA_seq |>
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) |>
    as.character() |>
    unique()

  counts <- sapply(AA_pres, function(amino_acid) stringr::str_count(string = AA_seq, pattern =  amino_acid)) |>
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["AA_seq"]] <- rownames(counts)

  AA_freq <- counts |>
    ggplot2::ggplot(ggplot2::aes(x = AA_seq, y = Counts, fill = AA_seq)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "none")

  return(AA_freq)
}
