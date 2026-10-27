
assign("codon_table", c(
  ATG = "M",
  GCC = "A",
  TGG = "W",
  AAG = "K",
  TAA = "*",
  GGC = "G"
), envir = globalenv())

test_that("translates a single codon", {
  expect_equal(table_to_string("ATG"), "M")
})

test_that("translates several codons into one string", {
  expect_equal(table_to_string(c("ATG", "GCC", "TGG")), "MAW")
})

test_that("keeps the order of the input codons", {
  expect_equal(table_to_string(c("TGG", "GCC", "ATG")), "WAM")
})

test_that("handles repeated codons", {
  expect_equal(table_to_string(c("GCC", "GCC", "GCC")), "AAA")
})
