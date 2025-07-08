#' Categories
#'
#' Product categories for organizing the Northwind product catalog.
#'
#' @format A data frame with 8 rows and 4 variables:
#' \describe{
#'   \item{category_id}{Category ID, primary key}
#'   \item{category_name}{Category name}
#'   \item{description}{Category description}
#'   \item{picture}{Picture (binary data)}
#' }
#' @source Northwind sample database
#' @examples
#'   categories
#'   
#'   # Products per category
#'   library(dplyr)
#'   categories %>%
#'     left_join(products, by = "category_id") %>%
#'     count(category_name, sort = TRUE, name = "product_count")
#'   
#'   # Category details
#'   categories %>%
#'     select(category_name, description)
"categories"
