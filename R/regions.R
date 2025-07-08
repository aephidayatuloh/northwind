#' Regions
#'
#' Sales regions used to group territories for Northwind's sales organization.
#'
#' @format A data frame with 4 rows and 2 variables:
#' \describe{
#'   \item{region_id}{Region ID, primary key}
#'   \item{region_description}{Region description/name}
#' }
#' @source Northwind sample database
#' @examples
#'   regions
#'   
#'   # Count territories per region
#'   library(dplyr)
#'   regions %>%
#'     left_join(territories, by = "region_id") %>%
#'     count(region_description, name = "territory_count") %>%
#'     arrange(desc(territory_count))
"regions"
