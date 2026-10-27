
test_that("translates a single codon (numeric index)", {
  expect_equal(table_to_string(1), "F")
})

test_that("translates a single codon (codon index)", {
  expect_equal(table_to_string("UUU"), "F")
})
