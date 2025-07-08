#' Products
#'
#' Information about products sold by Northwind Traders.
#'
#' @format A data frame with 77 rows and 10 variables:
#' \describe{
#'   \item{product_id}{Product ID, primary key}
#'   \item{product_name}{Product name}
#'   \item{supplier_id}{Supplier ID, foreign key to suppliers table}
#'   \item{category_id}{Category ID, foreign key to categories table}
#'   \item{quantity_per_unit}{Quantity per unit description}
#'   \item{unit_price}{Unit price in dollars}
#'   \item{units_in_stock}{Units currently in stock}
#'   \item{units_on_order}{Units on order}
#'   \item{reorder_level}{Reorder level}
#'   \item{discontinued}{Whether product is discontinued (0 = No, 1 = Yes)}
#' }
#' @source Northwind sample database
#' @examples
#'   products
#'   
#'   # Most expensive products
#'   library(dplyr)
#'   products %>%
#'     arrange(desc(unit_price)) %>%
#'     select(product_name, unit_price, units_in_stock) %>%
#'     head(10)
#'   
#'   # Products by category
#'   products %>%
#'     left_join(categories, by = "category_id") %>%
#'     count(category_name, sort = TRUE)
"products"
