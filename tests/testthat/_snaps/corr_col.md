# corr_col

    Code
      f(data1, data1)$rho
    Output
      # A tibble: 7 x 8
        x              up_1 down_1 random_1 random_up_1 random_down_1 constant_1 nas_1
        <chr>         <dbl>  <dbl>    <dbl>       <dbl>         <dbl>      <dbl> <dbl>
      1 up_1          1     -1        0.172       0.995        -0.994         NA    NA
      2 down_1       -1      1       -0.172      -0.995         0.994         NA    NA
      3 random_1      0.172 -0.172    1           0.127        -0.186         NA    NA
      4 random_up_1   0.995 -0.995    0.127       1            -0.991         NA    NA
      5 random_down~ -0.994  0.994   -0.186      -0.991         1             NA    NA
      6 constant_1   NA     NA       NA          NA            NA             NA    NA
      7 nas_1        NA     NA       NA          NA            NA             NA    NA

---

    Code
      f(data1, data1)$p
    Output
      # A tibble: 7 x 8
        x              up_1     down_1   random_1 random_up_1 random_down_1 constant_1
        <chr>         <dbl>      <dbl>      <dbl>       <dbl>         <dbl>      <dbl>
      1 up_1      2.32e-189  0          4.01e-  1   9.31e- 26     1.89e- 24         NA
      2 down_1    0          2.32e-189  4.01e-  1   9.31e- 26     1.89e- 24         NA
      3 random_1  4.01e-  1  4.01e-  1  2.32e-189   5.37e-  1     3.62e-  1         NA
      4 random_~  9.31e- 26  9.31e- 26  5.37e-  1   2.32e-189     1.54e- 22         NA
      5 random_~  1.89e- 24  1.89e- 24  3.62e-  1   1.54e- 22     2.32e-189         NA
      6 constan~ NA         NA         NA          NA            NA                 NA
      7 nas_1    NA         NA         NA          NA            NA                 NA
      # i 1 more variable: nas_1 <dbl>

---

    Code
      f(data1, data2)$rho
    Output
      # A tibble: 7 x 8
        x              up_2 down_2 random_2 random_up_2 random_down_2 constant_2 nas_2
        <chr>         <dbl>  <dbl>    <dbl>       <dbl>         <dbl>      <dbl> <dbl>
      1 up_1          1     -1      -0.474        0.994        -0.992         NA    NA
      2 down_1       -1      1       0.474       -0.994         0.992         NA    NA
      3 random_1      0.172 -0.172   0.0674       0.166        -0.185         NA    NA
      4 random_up_1   0.995 -0.995  -0.453        0.989        -0.984         NA    NA
      5 random_down~ -0.994  0.994   0.474       -0.985         0.992         NA    NA
      6 constant_1   NA     NA      NA           NA            NA             NA    NA
      7 nas_1        NA     NA      NA           NA            NA             NA    NA

---

    Code
      f(data1, data2)$p
    Output
      # A tibble: 7 x 8
        x                up_2     down_2 random_2 random_up_2 random_down_2 constant_2
        <chr>           <dbl>      <dbl>    <dbl>       <dbl>         <dbl>      <dbl>
      1 up_1        2.32e-189  0           0.0146    1.89e-24      5.90e-23         NA
      2 down_1      0          2.32e-189   0.0146    1.89e-24      5.90e-23         NA
      3 random_1    4.01e-  1  4.01e-  1   0.744     4.18e- 1      3.66e- 1         NA
      4 random_up~  9.31e- 26  9.31e- 26   0.0201    1.84e-21      1.39e-19         NA
      5 random_do~  1.89e- 24  1.89e- 24   0.0144    8.21e-20      2.08e-23         NA
      6 constant_1 NA         NA          NA        NA            NA                NA
      7 nas_1      NA         NA          NA        NA            NA                NA
      # i 1 more variable: nas_2 <dbl>

