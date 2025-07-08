#' Territories
#'
#' Sales territories used by Northwind employees for organizing sales activities.
#'
#' @format A data frame with 53 rows and 3 variables:
#' \describe{
#'   \item{territory_id}{Territory ID, primary key}
#'   \item{territory_description}{Territory description/name}
#'   \item{region_id}{Region ID, foreign key to regions table}
#' }
#' @source Northwind sample database
#' @examples
#'   territories
#'   
#'   # View territories by region
#'   library(dplyr)
#'   territories %>%
#'     left_join(regions, by = "region_id") %>%
#'     select(territory_description, region_description) %>%
#'     arrange(region_description, territory_description)
"territories"
