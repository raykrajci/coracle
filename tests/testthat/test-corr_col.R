test_that("corr_col",{
  expect_true(exists("corr_col"))

  f <- corr_col

  expect_snapshot(f(data1,data1)$rho)
  expect_snapshot(f(data1,data1)$p)
  expect_snapshot(f(data1,data2)$rho)
  expect_snapshot(f(data1,data2)$p)

})
