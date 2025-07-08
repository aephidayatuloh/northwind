#' Suppliers
#'
#' Information about product suppliers including contact details and location.
#'
#' @format A data frame with 29 rows and 12 variables:
#' \describe{
#'   \item{supplier_id}{Supplier ID, primary key}
#'   \item{company_name}{Company name}
#'   \item{contact_name}{Contact name}
#'   \item{contact_title}{Contact title}
#'   \item{address}{Address}
#'   \item{city}{City}
#'   \item{region}{Region}
#'   \item{postal_code}{Postal code}
#'   \item{country}{Country}
#'   \item{phone}{Phone}
#'   \item{fax}{Fax}
#'   \item{homepage}{Home page URL}
#' }
#' @source Northwind sample database
#' @examples
#'   suppliers
#'   
#'   # Suppliers by country
#'   library(dplyr)
#'   suppliers %>%
#'     count(country, sort = TRUE) %>%
#'     head(10)
#'   
#'   # Suppliers with websites
#'   suppliers %>%
#'     filter(!is.na(homepage)) %>%
#'     select(company_name, contact_name, homepage)
"suppliers"
