#' Correlations of Columns
#'
#' @param x A data.frame with a column containing values shared with y in the first position
#' @param y A data.frame with a column containing values shared with x in the first position
#'
#' @returns A named list of data.frames containing results of correlations between all pairs of numeric columns in x and y
#' @export
corr_col <- function(x, y) {

  start_time <- Sys.time()

  x <- x |>
    filter(x[[1]] %in% y[[1]]) |>
    arrange(x[[1]])

  y <- y %>%
    filter(y[[1]] %in% x[[1]]) |>
    arrange(y[[1]])

  x <- x |>
    select(where(is.numeric))

  y <- y |>
    select(where(is.numeric))

  is_correlatable <- function(vector) {
    vector |> discard(is.na) |> unique() |> length() >= 3
  }

  x_skipped_cols <- x %>%
    select(!where(is_correlatable)) |>
    names()

  y_skipped_cols <- y %>%
    select(!where(is_correlatable)) |>
    names()

  x <- x |>
    select(where(is_correlatable))

  y <- y |>
    select(where(is_correlatable))

  combinations <- expand_grid(x = names(x),
                              y = names(y))

  correlations <- map2(combinations$x, combinations$y, \(x_col, y_col) {
    result <- cor.test(x[[x_col]], y[[y_col]], method = "spearman", exact = FALSE)

    data.frame(
      x = x_col,
      y = y_col,
      rho = result$estimate,
      p = result$p.value
    )

  }) |>
    list_rbind()

  rm(x)
  rm(y)

  if(length(x_skipped_cols) > 0){
    correlations <- bind_rows(
      correlations,
      data.frame(x = x_skipped_cols, rho = NA, p = NA)
    )
  }

  if(length(y_skipped_cols) > 0){
    correlations <- bind_rows(
      correlations,
      data.frame(y = y_skipped_cols, rho = NA, p = NA)
    )
  }

  rho <- correlations |>
    select(x, y, rho) |>
    pivot_wider(names_from = y, values_from = rho) |>
    filter(!is.na(x)) # Skipped y cols create `NA` x values

  rho$`NA` <- NULL # Skipped x cols create `NA` cols via pivot_wider

  p <- correlations |>
    select(x, y, p) |>
    pivot_wider(names_from = y, values_from = p) |>
    filter(!is.na(x)) # Skipped y cols create `NA` x values

  p$`NA` <- NULL # Skipped x cols create `NA` cols via pivot_wider

  end_time <- Sys.time()

  list(rho = rho,
       p = p,
       meta = list(
         version = as.character(packageVersion("coracle")),
         execution_time = end_time - start_time
         )
       )

}
