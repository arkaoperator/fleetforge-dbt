-- Table: delivery_customers
-- Customers that receive shipments.

SELECT
  c_custkey AS customer_id,
  c_name AS customer_name,
  c_address AS customer_address,
  c_nationkey AS country_id,
  c_phone AS contact_number,
  c_mktsegment AS customer_segment
FROM raw.customer;
