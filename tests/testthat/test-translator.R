
test_that("translates a single codon (numeric index)", {
  expect_equal(translator(1), "F")
})

test_that("translates a single codon (codon index)", {
  expect_equal(translator("UUU"), "F")
})
