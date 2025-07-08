#' Customers
#'
#' Information about Northwind customers including contact details and location.
#'
#' @format A data frame with 91 rows and 11 variables:
#' \describe{
#'   \item{customer_id}{Customer ID, primary key}
#'   \item{company_name}{Company name}
#'   \item{contact_name}{Contact person name}
#'   \item{contact_title}{Contact person title}
#'   \item{address}{Street address}
#'   \item{city}{City}
#'   \item{region}{Region/State}
#'   \item{postal_code}{Postal code}
#'   \item{country}{Country}
#'   \item{phone}{Phone number}
#'   \item{fax}{Fax number}
#' }
#' @source Northwind sample database
#' @examples
#'   customers
#'   
#'   # Customer distribution by country
#'   library(dplyr)
#'   customers %>%
#'     count(country, sort = TRUE) %>%
#'     head(10)
#'   
#'   # Customers with fax numbers
#'   customers %>%
#'     filter(!is.na(fax)) %>%
#'     select(company_name, contact_name, fax)
"customers"
