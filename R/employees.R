#' Employees
#'
#' Information about Northwind employees including personal details and hierarchy.
#'
#' @format A data frame with 9 rows and 18 variables:
#' \describe{
#'   \item{employee_id}{Employee ID, primary key}
#'   \item{last_name}{Last name}
#'   \item{first_name}{First name}
#'   \item{title}{Job title}
#'   \item{title_of_courtesy}{Title of courtesy (Mr., Ms., etc.)}
#'   \item{birth_date}{Birth date}
#'   \item{hire_date}{Hire date}
#'   \item{address}{Address}
#'   \item{city}{City}
#'   \item{region}{Region}
#'   \item{postal_code}{Postal code}
#'   \item{country}{Country}
#'   \item{home_phone}{Home phone}
#'   \item{extension}{Extension}
#'   \item{photo}{Photo (binary data)}
#'   \item{notes}{Notes}
#'   \item{reports_to}{Reports to (employee ID)}
#'   \item{photo_path}{Photo path}
#' }
#' @source Northwind sample database
#' @examples
#'   employees
#'   
#'   # Employee hierarchy
#'   library(dplyr)
#'   employees %>%
#'     select(employee_id, first_name, last_name, title, reports_to) %>%
#'     left_join(employees, by = c("reports_to" = "employee_id"), suffix = c("", "_manager")) %>%
#'     transmute(employee_id, first_name, last_name, title, 
#'               manager_name = paste(first_name_manager, last_name_manager))
#'   
#'   # Employee sales performance
#'   employees %>%
#'     left_join(orders, by = "employee_id") %>%
#'     count(first_name, last_name, sort = TRUE, name = "total_orders")
"employees"
