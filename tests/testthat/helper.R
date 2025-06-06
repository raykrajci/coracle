set.seed(123)

n <- 26
p <- 0.25

data_x <- tibble(
  letters = letters[1:n],
  LETTERS = LETTERS[1:n],
  up = 1:n,
  down = n:1,
  random = runif(n),
  random_up = rnorm(n, mean = up),
  random_down = rnorm(n, mean = down),
  constant = 1,
  all_nas = NA_real_
) |>
  mutate(across(everything(),
                \(vec) ifelse(runif(length(vec)) > p, vec, NA),
                .names = "{.col}_nas")) |>
  rename_with(\(c) paste(c, "x", sep = "_"))

data_y <- tibble(
  letters = letters[1:n],
  LETTERS = LETTERS[1:n],
  up = 1:n,
  down = n:1,
  random = runif(n),
  random_up = rnorm(n, mean = up),
  random_down = rnorm(n, mean = down),
  constant = 1,
  all_nas = NA_real_
) |>
  mutate(across(everything(),
                \(vec) ifelse(runif(length(vec)) > p, vec, NA),
                .names = "{.col}_nas")) |>
  rename_with(\(c) paste(c, "y", sep = "_"))

