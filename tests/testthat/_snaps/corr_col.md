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
       1 up_x      1     -1      -0.0468       0.990        -0.994   1         -1     
       2 down_x   -1      1       0.0468      -0.990         0.994  -1          1     
       3 random_x  0.172 -0.172   0.0284       0.143        -0.169   0.0896    -0.0182
       4 random_~  0.995 -0.995  -0.0660       0.982        -0.990   0.994     -0.992 
       5 random_~ -0.994  0.994   0.0544      -0.986         0.988  -0.994      0.992 
       6 up_nas_x  1     -1      -0.0383       0.990        -0.992   1         -1     
       7 down_na~ -1      1      -0.0195      -0.988         0.988  -1          1     
       8 random_~  0.251 -0.251   0.0688       0.219        -0.247   0.0613    -0.0907
       9 random_~  0.988 -0.988   0.108        0.961        -0.986   0.982     -0.982 
      10 random_~ -0.988  0.988   0.203       -0.991         0.982  -0.989      0.984 
      11 constan~ NA     NA      NA           NA            NA      NA         NA     
      12 all_nas~ NA     NA      NA           NA            NA      NA         NA     
      13 constan~ NA     NA      NA           NA            NA      NA         NA     
      14 all_nas~ NA     NA      NA           NA            NA      NA         NA     
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
       1 up_x        2.32e-189  0            0.820    3.72e-22      1.89e-24  0       
       2 down_x      0          2.32e-189    0.820    3.72e-22      1.89e-24  0       
       3 random_x    4.01e-  1  4.01e-  1    0.891    4.85e- 1      4.10e- 1  6.99e- 1
       4 random_up~  9.31e- 26  9.31e- 26    0.749    6.01e-19      8.49e-22  2.11e-19
       5 random_do~  1.89e- 24  1.89e- 24    0.792    4.71e-20      7.49e-21  2.11e-19
       6 up_nas_x    1.09e-173  0            0.859    5.24e-20      2.24e-21  0       
       7 down_nas_x  0          0            0.935    4.80e-16      4.80e-16  0       
       8 random_na~  2.73e-  1  2.73e-  1    0.767    3.39e- 1      2.81e- 1  8.15e- 1
       9 random_up~  2.68e- 14  2.68e- 14    0.669    2.49e-10      9.12e-14  4.11e-10
      10 random_do~  8.11e- 13  8.11e- 13    0.451    1.09e-13      1.36e-11  1.75e-10
      11 constant_x NA         NA           NA       NA            NA        NA       
      12 all_nas_x  NA         NA           NA       NA            NA        NA       
      13 constant_~ NA         NA           NA       NA            NA        NA       
      14 all_nas_n~ NA         NA           NA       NA            NA        NA       
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
       1 up_x      1     -1      -0.0468       0.990        -0.994   1         -1     
       2 down_x   -1      1       0.0468      -0.990         0.994  -1          1     
       3 random_x  0.172 -0.172   0.0284       0.143        -0.169   0.0896    -0.0182
       4 random_~  0.995 -0.995  -0.0660       0.982        -0.990   0.994     -0.992 
       5 random_~ -0.994  0.994   0.0544      -0.986         0.988  -0.994      0.992 
       6 up_nas_x  1     -1      -0.0383       0.990        -0.992   1         -1     
       7 down_na~ -1      1      -0.0195      -0.988         0.988  -1          1     
       8 random_~  0.251 -0.251   0.0688       0.219        -0.247   0.0613    -0.0907
       9 random_~  0.988 -0.988   0.108        0.961        -0.986   0.982     -0.982 
      10 random_~ -0.988  0.988   0.203       -0.991         0.982  -0.989      0.984 
      11 constan~ NA     NA      NA           NA            NA      NA         NA     
      12 all_nas~ NA     NA      NA           NA            NA      NA         NA     
      13 constan~ NA     NA      NA           NA            NA      NA         NA     
      14 all_nas~ NA     NA      NA           NA            NA      NA         NA     
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
       1 up_x        2.32e-189  0            0.820    3.72e-22      1.89e-24  0       
       2 down_x      0          2.32e-189    0.820    3.72e-22      1.89e-24  0       
       3 random_x    4.01e-  1  4.01e-  1    0.891    4.85e- 1      4.10e- 1  6.99e- 1
       4 random_up~  9.31e- 26  9.31e- 26    0.749    6.01e-19      8.49e-22  2.11e-19
       5 random_do~  1.89e- 24  1.89e- 24    0.792    4.71e-20      7.49e-21  2.11e-19
       6 up_nas_x    1.09e-173  0            0.859    5.24e-20      2.24e-21  0       
       7 down_nas_x  0          0            0.935    4.80e-16      4.80e-16  0       
       8 random_na~  2.73e-  1  2.73e-  1    0.767    3.39e- 1      2.81e- 1  8.15e- 1
       9 random_up~  2.68e- 14  2.68e- 14    0.669    2.49e-10      9.12e-14  4.11e-10
      10 random_do~  8.11e- 13  8.11e- 13    0.451    1.09e-13      1.36e-11  1.75e-10
      11 constant_x NA         NA           NA       NA            NA        NA       
      12 all_nas_x  NA         NA           NA       NA            NA        NA       
      13 constant_~ NA         NA           NA       NA            NA        NA       
      14 all_nas_n~ NA         NA           NA       NA            NA        NA       
      # i 8 more variables: down_nas_y <dbl>, random_nas_y <dbl>,
      #   random_up_nas_y <dbl>, random_down_nas_y <dbl>, constant_y <dbl>,
      #   all_nas_y <dbl>, constant_nas_y <dbl>, all_nas_nas_y <dbl>

