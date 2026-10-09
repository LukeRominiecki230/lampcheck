#' Buzz Lightyear-inspired ggplot2 theme
#'
#' `theme_lightyear()` provides a clean plotting theme inspired by the Buzz
#' Lightyear color palette used in the lampcheck package. It uses a white
#' plotting background for readability, with purple and green accent colors
#' for branding and emphasis.
#'
#' @param base_size Base font size, in points.
#' @param base_family Base font family.
#'
#' @return A complete ggplot2 theme.
#'
#' @export
#'
#' @examples
#' ggplot2::ggplot(
#'   mtcars,
#'   ggplot2::aes(x = wt, y = mpg)
#' ) +
#'   ggplot2::geom_point(
#'     size = 2.5,
#'     color = "#5A2D82"
#'   ) +
#'   ggplot2::facet_wrap(~ cyl) +
#'   ggplot2::labs(
#'     title = "Fuel Economy by Engine Size",
#'     x = "Weight",
#'     y = "Miles per gallon"
#'   ) +
#'   theme_lightyear()
theme_lightyear <- function(base_size = 12, base_family = "") {

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family
  ) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        face = "bold",
        size = ggplot2::rel(1.3),
        color = "#5A2D82"
      ),
      plot.subtitle = ggplot2::element_text(
        color = "#333333"
      ),
      axis.title = ggplot2::element_text(
        face = "bold",
        color = "#5A2D82"
      ),
      axis.text = ggplot2::element_text(
        color = "#000000"
      ),
      panel.grid.major = ggplot2::element_line(
        color = "#E6DDF0",
        linewidth = 0.5
      ),
      panel.grid.minor = ggplot2::element_blank(),
      strip.background = ggplot2::element_rect(
        fill = "#5A2D82",
        color = NA
      ),
      strip.text = ggplot2::element_text(
        face = "bold",
        color = "#D7F171"
      ),
      legend.title = ggplot2::element_text(
        face = "bold",
        color = "#5A2D82"
      ),
      legend.text = ggplot2::element_text(
        color = "#000000"
      ),
      plot.background = ggplot2::element_rect(
        fill = "white",
        color = NA
      ),
      panel.background = ggplot2::element_rect(
        fill = "white",
        color = NA
      )
    )
}
