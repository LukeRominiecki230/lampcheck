test_that("theme_lightyear() returns a ggplot theme", {

  result <- theme_lightyear()

  expect_s3_class(result, "theme")
})


test_that("theme_lightyear() accepts custom base settings", {

  result <- theme_lightyear(
    base_size = 14,
    base_family = "sans"
  )

  expect_s3_class(result, "theme")
})
