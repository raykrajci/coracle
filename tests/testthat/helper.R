set.seed(123)

n <- 26

data1 <- data.frame(
  index_1 = letters[1:n],
  up_1 = 1:n,
  down_1 = n:1,
  random_1 = runif(n)) |>
  mutate(constant_1 = 1,
         nas_1 = NaN) |>
  rowwise() |>
  mutate(
    random_up_1 = rnorm(n = 1, mean = up_1),
    random_down_1 = rnorm(n = 1, mean = down_1)
         ) |>
  ungroup() |>
  arrange(random_1)

data2 <- data.frame(
  index_2 = letters[1:n],
  up_2 = 1:n,
  down_2 = n:1,
  random_2 = runif(n)) |>
  mutate(constant_2 = 1,
         nas_2 = NaN) |>
  rowwise() |>
  mutate(
    random_up_2 = rnorm(n = 1, mean = up_2),
    random_down_2 = rnorm(n = 1, mean = down_2)
  ) |>
  ungroup() |>
  arrange(random_2)

