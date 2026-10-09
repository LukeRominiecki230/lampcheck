test_that("lamp_check() returns the expected summary", {

  example_data <- data.frame(
    name = c("A", "B", NA),
    score = c(10, 10, 20)
  )

  result <- lamp_check(example_data)

  expect_equal(nrow(result), 2)
  expect_equal(
    names(result),
    c(
      "variable",
      "type",
      "missing",
      "percent_missing",
      "unique_values"
    )
  )

  expect_equal(result$missing, c(1, 0))
  expect_equal(result$percent_missing, c(33.3, 0))
})


test_that("lamp_check() requires a data frame", {

  expect_error(
    lamp_check(c(1, 2, 3)),
    "`data` must be a data frame"
  )
})
