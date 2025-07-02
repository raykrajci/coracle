# corr_col

    Code
      f(data_x, data_x)$rho
    Output
      # A tibble: 14 x 15
         x          up_x down_x random_x random_up_x random_down_x up_nas_x down_nas_x
         <chr>     <dbl>  <dbl>    <dbl>       <dbl>         <dbl>    <dbl>      <dbl>
       1 up_x      1     -1       0.172        0.995        -0.994    1         -1    
       2 down_x   -1      1      -0.172       -0.995         0.994   -1          1    
       3 random_x  0.172 -0.172   1            0.127        -0.186    0.238     -0.265
       4 random_~  0.995 -0.995   0.127        1            -0.991    0.994     -0.995
       5 random_~ -0.994  0.994  -0.186       -0.991         1       -0.994      0.994
       6 up_nas_x  1     -1       0.238        0.994        -0.994    1         -1    
       7 down_na~ -1      1      -0.265       -0.995         0.994   -1          1    
       8 random_~  0.251 -0.251   1            0.214        -0.297    0.330     -0.25 
       9 random_~  0.988 -0.988   0.0175       1            -0.983    0.985     -0.986
      10 random_~ -0.988  0.988   0.0176      -0.991         1       -0.987      0.984
      11 constan~ NA     NA      NA           NA            NA       NA         NA    
      12 all_nas~ NA     NA      NA           NA            NA       NA         NA    
      13 constan~ NA     NA      NA           NA            NA       NA         NA    
      14 all_nas~ NA     NA      NA           NA            NA       NA         NA    
      # i 7 more variables: random_nas_x <dbl>, random_up_nas_x <dbl>,
      #   random_down_nas_x <dbl>, constant_x <dbl>, all_nas_x <dbl>,
      #   constant_nas_x <dbl>, all_nas_nas_x <dbl>

---

    Code
      f(data_x, data_x)$p
    Output
      # A tibble: 14 x 15
         x             up_x     down_x   random_x random_up_x random_down_x   up_nas_x
         <chr>        <dbl>      <dbl>      <dbl>       <dbl>         <dbl>      <dbl>
       1 up_x     2.32e-189  0          4.01e-  1   9.31e- 26     1.89e- 24  1.09e-173
       2 down_x   0          2.32e-189  4.01e-  1   9.31e- 26     1.89e- 24  0        
       3 random~  4.01e-  1  4.01e-  1  2.32e-189   5.37e-  1     3.62e-  1  2.62e-  1
       4 random~  9.31e- 26  9.31e- 26  5.37e-  1   2.32e-189     1.54e- 22  1.42e- 22
       5 random~  1.89e- 24  1.89e- 24  3.62e-  1   1.54e- 22     2.32e-189  1.42e- 22
       6 up_nas~  1.09e-173  0          2.62e-  1   1.42e- 22     1.42e- 22  1.09e-173
       7 down_n~  0          0          2.59e-  1   7.23e- 20     9.58e- 19  0        
       8 random~  2.73e-  1  2.73e-  1  0           3.51e-  1     1.90e-  1  1.68e-  1
       9 random~  2.68e- 14  2.68e- 14  9.45e-  1   0             2.64e- 13  6.34e- 13
      10 random~  8.11e- 13  8.11e- 13  9.48e-  1   1.09e- 13     0          7.38e- 11
      11 consta~ NA         NA         NA          NA            NA         NA        
      12 all_na~ NA         NA         NA          NA            NA         NA        
      13 consta~ NA         NA         NA          NA            NA         NA        
      14 all_na~ NA         NA         NA          NA            NA         NA        
      # i 8 more variables: down_nas_x <dbl>, random_nas_x <dbl>,
      #   random_up_nas_x <dbl>, random_down_nas_x <dbl>, constant_x <dbl>,
      #   all_nas_x <dbl>, constant_nas_x <dbl>, all_nas_nas_x <dbl>

---

    Code
      f(data_x, data_y)$rho
    Output
      # A tibble: 14 x 15
         x          up_y down_y random_y random_up_y random_down_y up_nas_y down_nas_y
         <chr>     <dbl>  <dbl>    <dbl>       <dbl>         <dbl>    <dbl>      <dbl>
       1 up_x      1     -1       0.0229       0.994        -0.993    1        -1     
       2 down_x   -1      1      -0.0229      -0.994         0.993   -1         1     
       3 random_x  0.172 -0.172   0.338        0.203        -0.180    0.219    -0.0346
       4 random_~  0.995 -0.995  -0.0332       0.984        -0.986    0.989    -0.995 
       5 random_~ -0.994  0.994  -0.0448      -0.984         0.985   -0.988     0.992 
       6 up_nas_x  1     -1       0.0496       0.993        -0.993    1        -1     
       7 down_na~ -1      1       0.0331      -0.995         0.992   -1         1     
       8 random_~  0.251 -0.251   0.286        0.256        -0.244    0.364    -0.150 
       9 random_~  0.988 -0.988   0.0939       0.961        -0.971    0.978    -0.989 
      10 random_~ -0.988  0.988   0.426       -0.991         0.968   -0.973     0.987 
      11 constan~ NA     NA      NA           NA            NA       NA        NA     
      12 all_nas~ NA     NA      NA           NA            NA       NA        NA     
      13 constan~ NA     NA      NA           NA            NA       NA        NA     
      14 all_nas~ NA     NA      NA           NA            NA       NA        NA     
      # i 7 more variables: random_nas_y <dbl>, random_up_nas_y <dbl>,
      #   random_down_nas_y <dbl>, constant_y <dbl>, all_nas_y <dbl>,
      #   constant_nas_y <dbl>, all_nas_nas_y <dbl>

---

    Code
      f(data_x, data_y)$p
    Output
      # A tibble: 14 x 15
         x                up_y     down_y random_y random_up_y random_down_y  up_nas_y
         <chr>           <dbl>      <dbl>    <dbl>       <dbl>         <dbl>     <dbl>
       1 up_x        2.32e-189  0           0.912     1.89e-24      6.66e-24  0       
       2 down_x      0          2.32e-189   0.912     1.89e-24      6.66e-24  0       
       3 random_x    4.01e-  1  4.01e-  1   0.0911    3.19e- 1      3.78e- 1  3.67e- 1
       4 random_up~  9.31e- 26  9.31e- 26   0.872     1.39e-19      2.63e-20  1.03e-15
       5 random_do~  1.89e- 24  1.89e- 24   0.828     1.39e-19      8.21e-20  3.80e-15
       6 up_nas_x    1.09e-173  0           0.818     6.16e-22      6.16e-22  0       
       7 down_nas_x  0          0           0.890     7.23e-20      7.10e-18  0       
       8 random_na~  2.73e-  1  2.73e-  1   0.209     2.63e- 1      2.86e- 1  1.82e- 1
       9 random_up~  2.68e- 14  2.68e- 14   0.711     2.49e-10      2.23e-11  1.55e- 9
      10 random_do~  8.11e- 13  8.11e- 13   0.0995    1.09e-13      9.13e-10  5.14e- 7
      11 constant_x NA         NA          NA        NA            NA        NA       
      12 all_nas_x  NA         NA          NA        NA            NA        NA       
      13 constant_~ NA         NA          NA        NA            NA        NA       
      14 all_nas_n~ NA         NA          NA        NA            NA        NA       
      # i 8 more variables: down_nas_y <dbl>, random_nas_y <dbl>,
      #   random_up_nas_y <dbl>, random_down_nas_y <dbl>, constant_y <dbl>,
      #   all_nas_y <dbl>, constant_nas_y <dbl>, all_nas_nas_y <dbl>

---

    Code
      f(data_x, data_y, list(x_join = "letters_nas_x", y_join = "letters_nas_y"))$rho
    Output
      # A tibble: 14 x 15
         x          up_y down_y random_y random_up_y random_down_y up_nas_y down_nas_y
         <chr>     <dbl>  <dbl>    <dbl>       <dbl>         <dbl>    <dbl>      <dbl>
       1 up_x      1     -1     -0.103         0.987        -0.987    1        -1     
       2 down_x   -1      1      0.103        -0.987         0.987   -1         1     
       3 random_x  0.248 -0.248  0.591         0.319        -0.336    0.245    -0.0182
       4 random_~  0.978 -0.978 -0.240         0.947        -0.947    0.955    -0.982 
       5 random_~ -0.978  0.978  0.0989       -0.952         0.974   -0.955     0.973 
       6 up_nas_x  1     -1     -0.103         0.987        -0.987    1        -1     
       7 down_na~ -1      1      0.00909      -1             0.991   -1         1     
       8 random_~  0.264 -0.264  0.527         0.264        -0.327    0.233    -0.167 
       9 random_~  0.965 -0.965 -0.189         0.916        -0.916    0.939    -0.967 
      10 random_~ -0.976  0.976  0.738        -0.976         0.976   -0.943     0.964 
      11 constan~ NA     NA     NA            NA            NA       NA        NA     
      12 all_nas~ NA     NA     NA            NA            NA       NA        NA     
      13 constan~ NA     NA     NA            NA            NA       NA        NA     
      14 all_nas~ NA     NA     NA            NA            NA       NA        NA     
      # i 7 more variables: random_nas_y <dbl>, random_up_nas_y <dbl>,
      #   random_down_nas_y <dbl>, constant_y <dbl>, all_nas_y <dbl>,
      #   constant_nas_y <dbl>, all_nas_nas_y <dbl>

---

    Code
      f(data_x, data_y, list(x_join = "letters_nas_x", y_join = "letters_nas_y"))$p
    Output
      # A tibble: 14 x 15
         x                   up_y   down_y random_y random_up_y random_down_y up_nas_y
         <chr>              <dbl>    <dbl>    <dbl>       <dbl>         <dbl>    <dbl>
       1 up_x             0        0         0.725     7.38e-11      7.38e-11  0      
       2 down_x           0        0         0.725     7.38e-11      7.38e-11  0      
       3 random_x         3.92e-1  3.92e-1   0.0260    2.67e- 1      2.40e- 1  4.67e-1
       4 random_up_x      1.55e-9  1.55e-9   0.409     2.77e- 7      2.77e- 7  4.99e-6
       5 random_down_x    1.55e-9  1.55e-9   0.737     1.66e- 7      4.59e- 9  4.99e-6
       6 up_nas_x         0        0         0.725     7.38e-11      7.38e-11  0      
       7 down_nas_x       0        0         0.979     0             3.76e- 9  0      
       8 random_nas_x     4.33e-1  4.33e-1   0.0956    4.33e- 1      3.26e- 1  5.46e-1
       9 random_up_nas_x  3.88e-7  3.88e-7   0.557     2.84e- 5      2.84e- 5  5.48e-5
      10 random_down_na~  3.31e-5  3.31e-5   0.0366    3.31e- 5      3.31e- 5  4.80e-3
      11 constant_x      NA       NA        NA        NA            NA        NA      
      12 all_nas_x       NA       NA        NA        NA            NA        NA      
      13 constant_nas_x  NA       NA        NA        NA            NA        NA      
      14 all_nas_nas_x   NA       NA        NA        NA            NA        NA      
      # i 8 more variables: down_nas_y <dbl>, random_nas_y <dbl>,
      #   random_up_nas_y <dbl>, random_down_nas_y <dbl>, constant_y <dbl>,
      #   all_nas_y <dbl>, constant_nas_y <dbl>, all_nas_nas_y <dbl>

---

    Code
      f(data_x, data_x, list(x_labl = "x_vals"))$rho
    Output
      # A tibble: 14 x 15
         x_vals     up_x down_x random_x random_up_x random_down_x up_nas_x down_nas_x
         <chr>     <dbl>  <dbl>    <dbl>       <dbl>         <dbl>    <dbl>      <dbl>
       1 up_x      1     -1       0.172        0.995        -0.994    1         -1    
       2 down_x   -1      1      -0.172       -0.995         0.994   -1          1    
       3 random_x  0.172 -0.172   1            0.127        -0.186    0.238     -0.265
       4 random_~  0.995 -0.995   0.127        1            -0.991    0.994     -0.995
       5 random_~ -0.994  0.994  -0.186       -0.991         1       -0.994      0.994
       6 up_nas_x  1     -1       0.238        0.994        -0.994    1         -1    
       7 down_na~ -1      1      -0.265       -0.995         0.994   -1          1    
       8 random_~  0.251 -0.251   1            0.214        -0.297    0.330     -0.25 
       9 random_~  0.988 -0.988   0.0175       1            -0.983    0.985     -0.986
      10 random_~ -0.988  0.988   0.0176      -0.991         1       -0.987      0.984
      11 constan~ NA     NA      NA           NA            NA       NA         NA    
      12 all_nas~ NA     NA      NA           NA            NA       NA         NA    
      13 constan~ NA     NA      NA           NA            NA       NA         NA    
      14 all_nas~ NA     NA      NA           NA            NA       NA         NA    
      # i 7 more variables: random_nas_x <dbl>, random_up_nas_x <dbl>,
      #   random_down_nas_x <dbl>, constant_x <dbl>, all_nas_x <dbl>,
      #   constant_nas_x <dbl>, all_nas_nas_x <dbl>

---

    Code
      f(data_x, data_x, list(x_labl = "x_vals"))$p
    Output
      # A tibble: 14 x 15
         x_vals        up_x     down_x   random_x random_up_x random_down_x   up_nas_x
         <chr>        <dbl>      <dbl>      <dbl>       <dbl>         <dbl>      <dbl>
       1 up_x     2.32e-189  0          4.01e-  1   9.31e- 26     1.89e- 24  1.09e-173
       2 down_x   0          2.32e-189  4.01e-  1   9.31e- 26     1.89e- 24  0        
       3 random~  4.01e-  1  4.01e-  1  2.32e-189   5.37e-  1     3.62e-  1  2.62e-  1
       4 random~  9.31e- 26  9.31e- 26  5.37e-  1   2.32e-189     1.54e- 22  1.42e- 22
       5 random~  1.89e- 24  1.89e- 24  3.62e-  1   1.54e- 22     2.32e-189  1.42e- 22
       6 up_nas~  1.09e-173  0          2.62e-  1   1.42e- 22     1.42e- 22  1.09e-173
       7 down_n~  0          0          2.59e-  1   7.23e- 20     9.58e- 19  0        
       8 random~  2.73e-  1  2.73e-  1  0           3.51e-  1     1.90e-  1  1.68e-  1
       9 random~  2.68e- 14  2.68e- 14  9.45e-  1   0             2.64e- 13  6.34e- 13
      10 random~  8.11e- 13  8.11e- 13  9.48e-  1   1.09e- 13     0          7.38e- 11
      11 consta~ NA         NA         NA          NA            NA         NA        
      12 all_na~ NA         NA         NA          NA            NA         NA        
      13 consta~ NA         NA         NA          NA            NA         NA        
      14 all_na~ NA         NA         NA          NA            NA         NA        
      # i 8 more variables: down_nas_x <dbl>, random_nas_x <dbl>,
      #   random_up_nas_x <dbl>, random_down_nas_x <dbl>, constant_x <dbl>,
      #   all_nas_x <dbl>, constant_nas_x <dbl>, all_nas_nas_x <dbl>

---

    Code
      f(data_x, data_y, list(x_labl = "x_vals"))$rho
    Output
      # A tibble: 14 x 15
         x_vals     up_y down_y random_y random_up_y random_down_y up_nas_y down_nas_y
         <chr>     <dbl>  <dbl>    <dbl>       <dbl>         <dbl>    <dbl>      <dbl>
       1 up_x      1     -1       0.0229       0.994        -0.993    1        -1     
       2 down_x   -1      1      -0.0229      -0.994         0.993   -1         1     
       3 random_x  0.172 -0.172   0.338        0.203        -0.180    0.219    -0.0346
       4 random_~  0.995 -0.995  -0.0332       0.984        -0.986    0.989    -0.995 
       5 random_~ -0.994  0.994  -0.0448      -0.984         0.985   -0.988     0.992 
       6 up_nas_x  1     -1       0.0496       0.993        -0.993    1        -1     
       7 down_na~ -1      1       0.0331      -0.995         0.992   -1         1     
       8 random_~  0.251 -0.251   0.286        0.256        -0.244    0.364    -0.150 
       9 random_~  0.988 -0.988   0.0939       0.961        -0.971    0.978    -0.989 
      10 random_~ -0.988  0.988   0.426       -0.991         0.968   -0.973     0.987 
      11 constan~ NA     NA      NA           NA            NA       NA        NA     
      12 all_nas~ NA     NA      NA           NA            NA       NA        NA     
      13 constan~ NA     NA      NA           NA            NA       NA        NA     
      14 all_nas~ NA     NA      NA           NA            NA       NA        NA     
      # i 7 more variables: random_nas_y <dbl>, random_up_nas_y <dbl>,
      #   random_down_nas_y <dbl>, constant_y <dbl>, all_nas_y <dbl>,
      #   constant_nas_y <dbl>, all_nas_nas_y <dbl>

---

    Code
      f(data_x, data_y, list(x_labl = "x_vals"))$p
    Output
      # A tibble: 14 x 15
         x_vals           up_y     down_y random_y random_up_y random_down_y  up_nas_y
         <chr>           <dbl>      <dbl>    <dbl>       <dbl>         <dbl>     <dbl>
       1 up_x        2.32e-189  0           0.912     1.89e-24      6.66e-24  0       
       2 down_x      0          2.32e-189   0.912     1.89e-24      6.66e-24  0       
       3 random_x    4.01e-  1  4.01e-  1   0.0911    3.19e- 1      3.78e- 1  3.67e- 1
       4 random_up~  9.31e- 26  9.31e- 26   0.872     1.39e-19      2.63e-20  1.03e-15
       5 random_do~  1.89e- 24  1.89e- 24   0.828     1.39e-19      8.21e-20  3.80e-15
       6 up_nas_x    1.09e-173  0           0.818     6.16e-22      6.16e-22  0       
       7 down_nas_x  0          0           0.890     7.23e-20      7.10e-18  0       
       8 random_na~  2.73e-  1  2.73e-  1   0.209     2.63e- 1      2.86e- 1  1.82e- 1
       9 random_up~  2.68e- 14  2.68e- 14   0.711     2.49e-10      2.23e-11  1.55e- 9
      10 random_do~  8.11e- 13  8.11e- 13   0.0995    1.09e-13      9.13e-10  5.14e- 7
      11 constant_x NA         NA          NA        NA            NA        NA       
      12 all_nas_x  NA         NA          NA        NA            NA        NA       
      13 constant_~ NA         NA          NA        NA            NA        NA       
      14 all_nas_n~ NA         NA          NA        NA            NA        NA       
      # i 8 more variables: down_nas_y <dbl>, random_nas_y <dbl>,
      #   random_up_nas_y <dbl>, random_down_nas_y <dbl>, constant_y <dbl>,
      #   all_nas_y <dbl>, constant_nas_y <dbl>, all_nas_nas_y <dbl>

