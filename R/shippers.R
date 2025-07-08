#' Shippers
#'
#' Shipping companies used by Northwind.
#'
#' @format A data frame with 3 rows and 3 variables:
#' \describe{
#'   \item{shipper_id}{Shipper ID, primary key}
#'   \item{company_name}{Company name}
#'   \item{phone}{Phone number}
#' }
#' @source Northwind sample database
#' @examples
#'   shippers
#'   
#'   # Shipper usage frequency
#'   library(dplyr)
#'   shippers %>%
#'     left_join(orders, by = c("shipper_id" = "ship_via")) %>%
#'     count(company_name, sort = TRUE, name = "orders_shipped")
"shippers"
