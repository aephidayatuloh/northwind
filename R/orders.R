#' Orders
#'
#' Order header information including customer, employee, and shipping details.
#'
#' @format A data frame with 830 rows and 14 variables:
#' \describe{
#'   \item{order_id}{Order ID, primary key}
#'   \item{customer_id}{Customer ID, foreign key to customers table}
#'   \item{employee_id}{Employee ID, foreign key to employees table}
#'   \item{order_date}{Order date}
#'   \item{required_date}{Required date}
#'   \item{shipped_date}{Shipped date}
#'   \item{ship_via}{Shipper ID, foreign key to shippers table}
#'   \item{freight}{Freight cost}
#'   \item{ship_name}{Ship to name}
#'   \item{ship_address}{Ship to address}
#'   \item{ship_city}{Ship to city}
#'   \item{ship_region}{Ship to region}
#'   \item{ship_postal_code}{Ship to postal code}
#'   \item{ship_country}{Ship to country}
#' }
#' @source Northwind sample database
#' @examples
#'   orders
#'   
#'   # Orders by month
#'   library(dplyr)
#'   orders %>%
#'     mutate(order_month = format(order_date, "%Y-%m")) %>%
#'     count(order_month, sort = TRUE) %>%
#'     head(10)
#'   
#'   # Average freight by shipper
#'   orders %>%
#'     left_join(shippers, by = c("ship_via" = "shipper_id")) %>%
#'     group_by(company_name) %>%
#'     summarise(avg_freight = mean(freight, na.rm = TRUE)) %>%
#'     arrange(desc(avg_freight))
"orders"
