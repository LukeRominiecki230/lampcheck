#' Check a data frame for common data-quality issues
#'
#' `lamp_check()` gives a quick overview of a data frame before analysis.
#' It reports the number of rows, columns, duplicated rows, and incomplete
#' rows, then returns a variable-level summary of missing and unique values.
#'
#' @param data A data frame to check.
#'
#' @return A data frame with one row for each variable and columns describing
#'   the variable type, number of missing values, percent missing, and number
#'   of unique values.
#'
#' @export
#'
#' @examples
#' lamp_check(airquality)
lamp_check <- function(data) {

  if (!is.data.frame(data)) {
    stop("`data` must be a data frame.")
  }

  message("Rows: ", nrow(data))
  message("Columns: ", ncol(data))
  message("Duplicated rows: ", sum(duplicated(data)))
  message("Incomplete rows: ", sum(!stats::complete.cases(data)))

  data.frame(
    variable = names(data),
    type = vapply(data, function(x) class(x)[1], character(1)),
    missing = vapply(data, function(x) sum(is.na(x)), numeric(1)),
    percent_missing = round(
      vapply(data, function(x) mean(is.na(x)) * 100, numeric(1)),
      1
    ),
    unique_values = vapply(data, function(x) length(unique(x)), numeric(1)),
    row.names = NULL
  )
}
