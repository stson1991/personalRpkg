test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


test_that("The log summation should be infinite for large n", {
  expect_less_than(abs(log_summed_exps(1:2000) - 2000.459), 1e-3)
})


test_that("CLR returns numeric output", {
  expect_type(clr(c(4,10,5,1)), "double")
})



