test_that("corr_col",{
  expect_true(exists("corr_col"))

  f <- corr_col

  expect_snapshot(f(data_x,data_x)$rho)
  expect_snapshot(f(data_x,data_x)$p)
  expect_snapshot(f(data_x,data_y)$rho)
  expect_snapshot(f(data_x,data_y)$p)

  expect_snapshot(f(data_x,data_y, list(x_join = "letters_nas_x",
                                        y_join = "letters_nas_y"))$rho)
  expect_snapshot(f(data_x,data_y, list(x_join = "letters_nas_x",
                                        y_join = "letters_nas_y"))$p)

  expect_snapshot(f(data_x,data_x, list(x_labl = "x_vals"))$rho)
  expect_snapshot(f(data_x,data_x, list(x_labl = "x_vals"))$p)
  expect_snapshot(f(data_x,data_y, list(x_labl = "x_vals"))$rho)
  expect_snapshot(f(data_x,data_y, list(x_labl = "x_vals"))$p)


})
