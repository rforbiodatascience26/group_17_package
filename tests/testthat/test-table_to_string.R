
assign("codon_table", c(
  ATG = "M",
  GCC = "A",
  TGG = "W",
  AAG = "K",
  TAA = "*",
  GGC = "G"
), envir = globalenv())

test_that("translates a single codon", {
  expect_equal(table_to_string("ATG"), "NA")
})

