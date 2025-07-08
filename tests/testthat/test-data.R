# =============================================================================
# NORTHWIND PACKAGE TESTS
# File: tests/testthat/test-data.R
# =============================================================================

# Test Customers Data
test_that("customers columns are correct", {
  c_names <- names(customers)
  expect_true("customer_id" %in% c_names)
  expect_true("company_name" %in% c_names)
  expect_true("contact_name" %in% c_names)
  expect_true("contact_title" %in% c_names)
  expect_true("address" %in% c_names)
  expect_true("city" %in% c_names)
  expect_true("region" %in% c_names)
  expect_true("postal_code" %in% c_names)
  expect_true("country" %in% c_names)
  expect_true("phone" %in% c_names)
  expect_true("fax" %in% c_names)
})

test_that("customers data structure is correct", {
  expect_s3_class(customers, "data.frame")
  expect_equal(ncol(customers), 11)
  expect_equal(nrow(customers), 91)
  expect_true(!any(is.na(customers$customer_id)))
  expect_true(!any(is.na(customers$company_name)))
})

# Test Products Data
test_that("products columns are correct", {
  p_names <- names(products)
  expect_true("product_id" %in% p_names)
  expect_true("product_name" %in% p_names)
  expect_true("supplier_id" %in% p_names)
  expect_true("category_id" %in% p_names)
  expect_true("quantity_per_unit" %in% p_names)
  expect_true("unit_price" %in% p_names)
  expect_true("units_in_stock" %in% p_names)
  expect_true("units_on_order" %in% p_names)
  expect_true("reorder_level" %in% p_names)
  expect_true("discontinued" %in% p_names)
})

test_that("products data structure is correct", {
  expect_s3_class(products, "data.frame")
  expect_equal(ncol(products), 10)
  expect_equal(nrow(products), 77)
  expect_true(!any(is.na(products$product_id)))
  expect_true(!any(is.na(products$product_name)))
  expect_true(all(products$unit_price >= 0, na.rm = TRUE))
  expect_true(all(products$discontinued %in% c(0, 1), na.rm = TRUE))
})

# Test Orders Data
test_that("orders columns are correct", {
  o_names <- names(orders)
  expect_true("order_id" %in% o_names)
  expect_true("customer_id" %in% o_names)
  expect_true("employee_id" %in% o_names)
  expect_true("order_date" %in% o_names)
  expect_true("required_date" %in% o_names)
  expect_true("shipped_date" %in% o_names)
  expect_true("ship_via" %in% o_names)
  expect_true("freight" %in% o_names)
  expect_true("ship_name" %in% o_names)
  expect_true("ship_address" %in% o_names)
  expect_true("ship_city" %in% o_names)
  expect_true("ship_region" %in% o_names)
  expect_true("ship_postal_code" %in% o_names)
  expect_true("ship_country" %in% o_names)
})

test_that("orders data structure is correct", {
  expect_s3_class(orders, "data.frame")
  expect_equal(ncol(orders), 14)
  expect_equal(nrow(orders), 830)
  expect_true(!any(is.na(orders$order_id)))
  expect_true(all(orders$freight >= 0, na.rm = TRUE))
})

# Test Order Details Data
test_that("order_details columns are correct", {
  od_names <- names(order_details)
  expect_true("order_id" %in% od_names)
  expect_true("product_id" %in% od_names)
  expect_true("unit_price" %in% od_names)
  expect_true("quantity" %in% od_names)
  expect_true("discount" %in% od_names)
})

test_that("order_details data structure is correct", {
  expect_s3_class(order_details, "data.frame")
  expect_equal(ncol(order_details), 5)
  expect_equal(nrow(order_details), 2155)
  expect_true(!any(is.na(order_details$order_id)))
  expect_true(!any(is.na(order_details$product_id)))
  expect_true(all(order_details$unit_price >= 0, na.rm = TRUE))
  expect_true(all(order_details$quantity > 0, na.rm = TRUE))
  expect_true(all(order_details$discount >= 0 & order_details$discount <= 1, na.rm = TRUE))
})

# Test Employees Data
test_that("employees columns are correct", {
  e_names <- names(employees)
  expect_true("employee_id" %in% e_names)
  expect_true("last_name" %in% e_names)
  expect_true("first_name" %in% e_names)
  expect_true("title" %in% e_names)
  expect_true("title_of_courtesy" %in% e_names)
  expect_true("birth_date" %in% e_names)
  expect_true("hire_date" %in% e_names)
  expect_true("address" %in% e_names)
  expect_true("city" %in% e_names)
  expect_true("region" %in% e_names)
  expect_true("postal_code" %in% e_names)
  expect_true("country" %in% e_names)
  expect_true("home_phone" %in% e_names)
  expect_true("extension" %in% e_names)
  expect_true("photo" %in% e_names)
  expect_true("notes" %in% e_names)
  expect_true("reports_to" %in% e_names)
  expect_true("photo_path" %in% e_names)
})

test_that("employees data structure is correct", {
  expect_s3_class(employees, "data.frame")
  expect_equal(ncol(employees), 18)
  expect_equal(nrow(employees), 9)
  expect_true(!any(is.na(employees$employee_id)))
  expect_true(!any(is.na(employees$last_name)))
  expect_true(!any(is.na(employees$first_name)))
})

# Test Suppliers Data
test_that("suppliers columns are correct", {
  s_names <- names(suppliers)
  expect_true("supplier_id" %in% s_names)
  expect_true("company_name" %in% s_names)
  expect_true("contact_name" %in% s_names)
  expect_true("contact_title" %in% s_names)
  expect_true("address" %in% s_names)
  expect_true("city" %in% s_names)
  expect_true("region" %in% s_names)
  expect_true("postal_code" %in% s_names)
  expect_true("country" %in% s_names)
  expect_true("phone" %in% s_names)
  expect_true("fax" %in% s_names)
  expect_true("homepage" %in% s_names)
})

test_that("suppliers data structure is correct", {
  expect_s3_class(suppliers, "data.frame")
  expect_equal(ncol(suppliers), 12)
  expect_equal(nrow(suppliers), 29)
  expect_true(!any(is.na(suppliers$supplier_id)))
  expect_true(!any(is.na(suppliers$company_name)))
})

# Test Categories Data
test_that("categories columns are correct", {
  cat_names <- names(categories)
  expect_true("category_id" %in% cat_names)
  expect_true("category_name" %in% cat_names)
  expect_true("description" %in% cat_names)
  expect_true("picture" %in% cat_names)
})

test_that("categories data structure is correct", {
  expect_s3_class(categories, "data.frame")
  expect_equal(ncol(categories), 4)
  expect_equal(nrow(categories), 8)
  expect_true(!any(is.na(categories$category_id)))
  expect_true(!any(is.na(categories$category_name)))
})

# Test Shippers Data
test_that("shippers columns are correct", {
  sh_names <- names(shippers)
  expect_true("shipper_id" %in% sh_names)
  expect_true("company_name" %in% sh_names)
  expect_true("phone" %in% sh_names)
})

test_that("shippers data structure is correct", {
  expect_s3_class(shippers, "data.frame")
  expect_equal(ncol(shippers), 3)
  expect_equal(nrow(shippers), 6)
  expect_true(!any(is.na(shippers$shipper_id)))
  expect_true(!any(is.na(shippers$company_name)))
})

# Test Territories Data
test_that("territories columns are correct", {
  t_names <- names(territories)
  expect_true("territory_id" %in% t_names)
  expect_true("territory_description" %in% t_names)
  expect_true("region_id" %in% t_names)
})

test_that("territories data structure is correct", {
  expect_s3_class(territories, "data.frame")
  expect_equal(ncol(territories), 3)
  expect_equal(nrow(territories), 53)
  expect_true(!any(is.na(territories$territory_id)))
  expect_true(!any(is.na(territories$territory_description)))
  expect_true(!any(is.na(territories$region_id)))
})

# Test Regions Data
test_that("regions columns are correct", {
  r_names <- names(regions)
  expect_true("region_id" %in% r_names)
  expect_true("region_description" %in% r_names)
})

test_that("regions data structure is correct", {
  expect_s3_class(regions, "data.frame")
  expect_equal(ncol(regions), 2)
  expect_equal(nrow(regions), 4)
  expect_true(!any(is.na(regions$region_id)))
  expect_true(!any(is.na(regions$region_description)))
})

# Test US States Data
test_that("us_states columns are correct", {
  us_names <- names(us_states)
  expect_true("state_id" %in% us_names)
  expect_true("state_name" %in% us_names)
  expect_true("state_abbr" %in% us_names)
  expect_true("state_region" %in% us_names)
})

test_that("us_states data structure is correct", {
  expect_s3_class(us_states, "data.frame")
  expect_equal(ncol(us_states), 4)
  expect_equal(nrow(us_states), 51)
  expect_true(!any(is.na(us_states$state_id)))
  expect_true(!any(is.na(us_states$state_name)))
  expect_true(!any(is.na(us_states$state_abbr)))
  expect_true(all(nchar(us_states$state_abbr) == 2))
})

# Test Employee Territories Data
test_that("employee_territories columns are correct", {
  et_names <- names(employee_territories)
  expect_true("employee_id" %in% et_names)
  expect_true("territory_id" %in% et_names)
})

test_that("employee_territories data structure is correct", {
  expect_s3_class(employee_territories, "data.frame")
  expect_equal(ncol(employee_territories), 2)
  expect_equal(nrow(employee_territories), 49)
  expect_true(!any(is.na(employee_territories$employee_id)))
  expect_true(!any(is.na(employee_territories$territory_id)))
})

# =============================================================================
# RELATIONAL INTEGRITY TESTS
# =============================================================================

test_that("foreign key relationships are valid", {
  # Products -> Categories
  expect_true(all(products$category_id %in% categories$category_id, na.rm = TRUE))
  
  # Products -> Suppliers
  expect_true(all(products$supplier_id %in% suppliers$supplier_id, na.rm = TRUE))
  
  # Orders -> Customers
  expect_true(all(orders$customer_id %in% customers$customer_id, na.rm = TRUE))
  
  # Orders -> Employees
  expect_true(all(orders$employee_id %in% employees$employee_id, na.rm = TRUE))
  
  # Orders -> Shippers
  expect_true(all(orders$ship_via %in% shippers$shipper_id, na.rm = TRUE))
  
  # Order Details -> Orders
  expect_true(all(order_details$order_id %in% orders$order_id))
  
  # Order Details -> Products
  expect_true(all(order_details$product_id %in% products$product_id))
  
  # Territories -> Regions
  expect_true(all(territories$region_id %in% regions$region_id))
  
  # Employee Territories -> Employees
  expect_true(all(employee_territories$employee_id %in% employees$employee_id))
  
  # Employee Territories -> Territories
  expect_true(all(employee_territories$territory_id %in% territories$territory_id))
  
  # Employees -> Employees (self-referencing)
  expect_true(all(employees$reports_to %in% employees$employee_id | is.na(employees$reports_to)))
})

# =============================================================================
# DATA QUALITY TESTS
# =============================================================================

test_that("data quality checks pass", {
  # Check for reasonable date ranges
  expect_true(all(orders$order_date >= as.Date("1996-01-01") & 
                 orders$order_date <= as.Date("1998-12-31"), na.rm = TRUE))
  
  # Check for positive quantities and prices
  expect_true(all(order_details$quantity > 0))
  expect_true(all(order_details$unit_price >= 0))
  expect_true(all(products$unit_price >= 0, na.rm = TRUE))
  
  # Check discount range
  expect_true(all(order_details$discount >= 0 & order_details$discount <= 1))
  
  # Check unique primary keys
  expect_equal(length(unique(customers$customer_id)), nrow(customers))
  expect_equal(length(unique(products$product_id)), nrow(products))
  expect_equal(length(unique(orders$order_id)), nrow(orders))
  expect_equal(length(unique(employees$employee_id)), nrow(employees))
  expect_equal(length(unique(suppliers$supplier_id)), nrow(suppliers))
  expect_equal(length(unique(categories$category_id)), nrow(categories))
  expect_equal(length(unique(shippers$shipper_id)), nrow(shippers))
  expect_equal(length(unique(territories$territory_id)), nrow(territories))
  expect_equal(length(unique(regions$region_id)), nrow(regions))
  expect_equal(length(unique(us_states$state_id)), nrow(us_states))
  
  # Check state abbreviations are unique
  expect_equal(length(unique(us_states$state_abbr)), nrow(us_states))
})

# =============================================================================
# BASIC ANALYSIS TESTS
# =============================================================================

test_that("basic analysis functions work", {
  # Test that we can join tables without errors
  expect_s3_class(
    orders %>% 
      dplyr::left_join(customers, by = "customer_id") %>%
      dplyr::left_join(employees, by = "employee_id"),
    "data.frame"
  )
  
  # Test that we can calculate revenue
  revenue_calc <- order_details %>%
    dplyr::mutate(revenue = unit_price * quantity * (1 - discount)) %>%
    dplyr::summarise(total_revenue = sum(revenue))
  
  expect_true(revenue_calc$total_revenue > 0)
  
  # Test territory-region relationships
  territory_regions <- territories %>%
    dplyr::left_join(regions, by = "region_id")
  
  expect_equal(nrow(territory_regions), nrow(territories))
  expect_true(all(!is.na(territory_regions$region_description)))
})
