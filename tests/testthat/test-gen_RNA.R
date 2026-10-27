test_that("gen_RNA replaces T with U", {
  expect_equal(gen_RNA("CGATTAGC"), "CGAUUAGC")
})
