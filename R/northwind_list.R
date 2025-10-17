#' List of Available Northwind Tables
#'
#' Returns a data frame with the names and descriptions of the available tables
#' included in the `northwind` package.
#'
#' @return A data frame with two columns: `table` and `description`
#' @export
#'
#' @examples
#' northwind_list()
northwind_list <- function() {
  data.frame(
    table = c(
      "customers",
      "orders",
      "order_details",
      "products",
      "categories",
      "suppliers",
      "employees",
      "shippers",
      "territories",
      "region",
      "employees_territories",
      "us_states"
    ),
    description = c(
      "Customer information",
      "Sales order transactions",
      "Details of each item in an order",
      "List of available products",
      "Product categories",
      "Product supplier information",
      "Employee details and reporting lines",
      "Shipping service providers",
      "Sales territories assigned to employees",
      "Geographical regions",
      "Mapping of employees to their sales territories",
      "Reference table for U.S. states"
    )
  )
}
