#' US States
#'
#' United States state information including abbreviations and names, 
#' commonly used for address validation and geographic analysis.
#'
#' @format A data frame with 50 rows and 4 variables:
#' \describe{
#'   \item{state_id}{State ID, primary key}
#'   \item{state_name}{Full state name}
#'   \item{state_abbr}{Two-letter state abbreviation}
#'   \item{state_region}{US Census region (Northeast, South, Midwest, West)}
#' }
#' @source US Census Bureau and Northwind sample database
#' @examples
#'   us_states
#'   
#'   # View states by region
#'   library(dplyr)
#'   us_states %>%
#'     count(state_region, name = "state_count") %>%
#'     arrange(desc(state_count))
#'   
#'   # Find state by abbreviation
#'   us_states %>%
#'     filter(state_abbr == "CA")
"us_states"
