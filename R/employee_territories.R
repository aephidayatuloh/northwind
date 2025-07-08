#' Employee Territories
#'
#' Junction table linking employees to their assigned sales territories.
#'
#' @format A data frame with 49 rows and 2 variables:
#' \describe{
#'   \item{employee_id}{Employee ID, foreign key to employees table}
#'   \item{territory_id}{Territory ID, foreign key to territories table}
#' }
#' @source Northwind sample database
#' @examples
#'   employee_territories
#'   
#'   # Employee territory assignments
#'   library(dplyr)
#'   employee_territories %>%
#'     left_join(employees, by = "employee_id") %>%
#'     left_join(territories, by = "territory_id") %>%
#'     left_join(regions, by = "region_id") %>%
#'     select(first_name, last_name, territory_description, region_description) %>%
#'     arrange(last_name, first_name)
#'   
#'   # Territories per employee
#'   employee_territories %>%
#'     left_join(employees, by = "employee_id") %>%
#'     count(first_name, last_name, sort = TRUE, name = "territory_count")
"employee_territories"
