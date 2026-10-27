test_that("DNA_sequence only uses A, T, G, and C", {
  result <- DNA_sequence(200)
  unique_chars <- unique(strsplit(result, "")[[1]])
  expect_equal(setdiff(unique_chars, c("A", "T", "G", "C")), character(0))
})
