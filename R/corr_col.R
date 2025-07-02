#' Correlations of Columns
#'
#' @param x A data frame with a column containing values shared with `y`.
#' @param y A data frame with a column containing values shared with `x`.
#' @param options A named list of options to pass to the function.
#' - `*_join`: A character scalar of a column name in `*` ("x" or "y") to use for joining. Defaults to the first column.
#' - `*_labl`: A character scalar describing the inputs ("x" or "y")to label the output columns and metadata. Defaults to "x" or "y".
#' - `progress`: Boolean value to show function progress. Defaults to `FALSE`.
#' @md
#'
#' @returns A named list of data frames containing results of correlations between all pairs of numeric columns in `x` and `y`.
#' @export
corr_col <- function(x,
                     y,
                     options = list(x_join = NULL,
                                    y_join = NULL,
                                    x_labl = NULL,
                                    y_labl = NULL,
                                    progress = NULL)) {

  start_time <- Sys.time()

  x_join <- options[["x_join"]] %||% names(x)[[1]]
  y_join <- options[["y_join"]] %||% names(y)[[1]]

  shared_vals <- intersect(x[[x_join]], y[[y_join]]) |> discard(is.na)

  x <- x |>
    filter(!!sym(x_join) %in% shared_vals)

  y <- y |>
    filter(!!sym(y_join) %in% shared_vals)

  x <- x |>
    arrange(!!sym(x_join))

  y <- y |>
    arrange(!!sym(y_join))

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

  },
  .progress = options[["progress"]] %||% FALSE) |>
    list_rbind()

  rm(x)
  rm(y)
  rm(combinations)

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

  x_labl <- options[["x_labl"]] %||% "x"
  y_labl <- options[["y_labl"]] %||% "y"

  rho <- correlations |>
    select(x, y, rho) |>
    pivot_wider(names_from = y, values_from = rho) |>
    filter(!is.na(x)) |>  # Skipped y cols create `NA` x values -> delete them
    rename(!!x_labl := x)

  rho$`NA` <- NULL # Skipped x cols create `NA` cols via pivot_wider -> delete them

  p <- correlations |>
    select(x, y, p) |>
    pivot_wider(names_from = y, values_from = p) |>
    filter(!is.na(x)) |>  # Skipped y cols create `NA` x values -> delete them
    rename(!!x_labl := x)

  p$`NA` <- NULL # Skipped x cols create `NA` cols via pivot_wider -> delete them

  end_time <- Sys.time()

  list(rho = rho,
       p = p,
       meta = list(
         version = as.character(packageVersion("coracle")),
         execution_time = end_time - start_time,
         options = options
         )
       )

}
