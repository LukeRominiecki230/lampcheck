#' Pixar films
#'
#' Basic information about Pixar feature films, including release order,
#' release date, runtime, and film rating.
#'
#' @format A data frame with 27 rows and 5 variables:
#' \tabular{ll}{
#'   `number` \tab Order of release. \cr
#'   `film` \tab Film title. \cr
#'   `release_date` \tab Date the film premiered. \cr
#'   `run_time` \tab Film length in minutes. \cr
#'   `film_rating` \tab MPA film rating.
#' }
#'
#' @source TidyTuesday, 2025-03-11.
"pixar_films"


#' Pixar public response
#'
#' Public and critical response measures for Pixar films.
#'
#' @format A data frame with 24 rows and 5 variables:
#' \tabular{ll}{
#'   `film` \tab Film title. \cr
#'   `rotten_tomatoes` \tab Rotten Tomatoes score out of 100. \cr
#'   `metacritic` \tab Metacritic score out of 100. \cr
#'   `cinema_score` \tab CinemaScore letter grade. \cr
#'   `critics_choice` \tab Critics Choice score out of 100.
#' }
#'
#' @source TidyTuesday, 2025-03-11.
"public_response"
