
<!-- README.md is generated from README.Rmd. Please edit that file -->

# coracle

<center>

<img src="man/figures/coracle_hex.png" width="150"/>
</center>

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/coracle)](https://CRAN.R-project.org/package=coracle)

<!-- badges: end -->

> Correlations of Columns \>\> “Corr” + “Col” \>\> “Coracle”

## Installation

Install `coracle` from the `raykrajci/coracle` repository on
[GitHub](https://github.com) with `devtools` or your package manager of
choice:

``` r
devtools::install_github("raykrajci/coracle")
library(coracle)
```

## Usage

### Pairwise correlations

The main functions of `coracle` is `corr_col()` which does a pairwise
correlation between all numeric columns of two data frames. It returns a
named list with data frames of correlation values, p values, and a list
of metadata.

For example:

``` r

df1 <- data.frame(i_1 = letters[1:5],
                  up_1 = 1:5,
                  down_1 = 5:1,
                  random_1 = runif(5))

df2 <- data.frame(i_2 = letters[1:5],
                  up_2 = 1:5,
                  down_2 = 5:1,
                  random_2= runif(5))

results <- coracle::corr_col(x = df1, y = df2)

results$rho
#> # A tibble: 3 × 4
#>   x         up_2 down_2 random_2
#>   <chr>    <dbl>  <dbl>    <dbl>
#> 1 up_1       1     -1       -0.2
#> 2 down_1    -1      1        0.2
#> 3 random_1  -0.1    0.1      0.6

results$p
#> # A tibble: 3 × 4
#>   x            up_2   down_2 random_2
#>   <chr>       <dbl>    <dbl>    <dbl>
#> 1 up_1     3.97e-24 1.12e-23    0.747
#> 2 down_1   1.12e-23 3.97e-24    0.747
#> 3 random_1 8.73e- 1 8.73e- 1    0.285

results$meta
#> $version
#> [1] "3.2.1"
#> 
#> $execution_time
#> Time difference of 0.03326797 secs
#> 
#> $options
#> $options$x_join
#> NULL
#> 
#> $options$y_join
#> NULL
#> 
#> $options$x_labl
#> NULL
#> 
#> $options$y_labl
#> NULL
#> 
#> $options$progress
#> NULL
```

Observe:

- The function assumes the column used to join values from the inputs is
  in the first position. This can be overridden with the `options`
  parameter discussed below.
- The first input (`x`) becomes a column of values while the second
  (`y`) become column names. This convention may be useful to streamline
  subsequent correlations.
- The `meta` list contains useful information for understanding and/or
  debugging the output.

### Options

The `corr_col()` function accepts a named list as an `options`
parameter. These values may be used to specify which columns from `x`
and `y` to use for joining, label outputs, or report on progress.

For example:

``` r

results_w_options <- coracle::corr_col(x = df1,
                             y = df2,
                             options = list(
                               x_join = "up_1",
                               y_join = "down_2",
                               x_labl = "x_data",
                               y_labl = "y_data",
                               progress = TRUE
                             ))

results_w_options$rho
#> # A tibble: 3 × 4
#>   x_data    up_2 down_2 random_2
#>   <chr>    <dbl>  <dbl>    <dbl>
#> 1 up_1      -1      1        0.2
#> 2 down_1     1     -1       -0.2
#> 3 random_1   0.1   -0.1     -0.4

results_w_options$p
#> # A tibble: 3 × 4
#>   x_data       up_2   down_2 random_2
#>   <chr>       <dbl>    <dbl>    <dbl>
#> 1 up_1     1.12e-23 3.97e-24    0.747
#> 2 down_1   3.97e-24 1.12e-23    0.747
#> 3 random_1 8.73e- 1 8.73e- 1    0.505

results_w_options$meta
#> $version
#> [1] "3.2.1"
#> 
#> $execution_time
#> Time difference of 0.0190711 secs
#> 
#> $options
#> $options$x_join
#> [1] "up_1"
#> 
#> $options$y_join
#> [1] "down_2"
#> 
#> $options$x_labl
#> [1] "x_data"
#> 
#> $options$y_labl
#> [1] "y_data"
#> 
#> $options$progress
#> [1] TRUE
```

Observe:

- By joining the “up” column from `x` and the “down” column from `y` the
  correlation results have inverted (i.e. the “up” columns have a
  negative correlation with the “down” columns) due to the join
  specifications in `options`.
- The first column is now named “x_data”, as specified in `options`. The
  label for the columns (from `y`) may be found in the `meta` list.
- The `meta` list contains the `options` input for understanding the
  input and debugging.
