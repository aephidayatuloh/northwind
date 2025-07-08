#' Order Details
#'
#' Line item details for each order including product, quantity, and pricing.
#'
#' @format A data frame with 2,155 rows and 5 variables:
#' \describe{
#'   \item{order_id}{Order ID, foreign key to orders table}
#'   \item{product_id}{Product ID, foreign key to products table}
#'   \item{unit_price}{Unit price at time of order}
#'   \item{quantity}{Quantity ordered}
#'   \item{discount}{Discount applied (0-1)}
#' }
#' @source Northwind sample database
#' @examples
#'   order_details
#'   
#'   # Top selling products by quantity
#'   library(dplyr)
#'   order_details %>%
#'     group_by(product_id) %>%
#'     summarise(total_quantity = sum(quantity)) %>%
#'     left_join(products, by = "product_id") %>%
#'     arrange(desc(total_quantity)) %>%
#'     select(product_name, total_quantity) %>%
#'     head(10)
#'   
#'   # Revenue by product
#'   order_details %>%
#'     mutate(revenue = unit_price * quantity * (1 - discount)) %>%
#'     group_by(product_id) %>%
#'     summarise(total_revenue = sum(revenue)) %>%
#'     arrange(desc(total_revenue)) %>%
#'     head(10)
"order_details"
