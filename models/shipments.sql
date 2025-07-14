-- Table: shipments
-- Shipment-level metadata from the FleetForge system.
-- One row per shipment.

SELECT
  o_orderkey AS shipment_id,            -- Unique ID
  o_custkey AS customer_id,             -- FK to delivery_customers
  o_orderstatus AS shipment_status,     -- 'F' = fulfilled, 'O' = open
  o_totalprice AS shipment_value,       -- Includes fuel & carrier fees
  o_orderdate AS created_at,
  o_orderpriority AS priority_level,
  o_clerk AS dispatcher,
  o_comment AS notes
FROM raw.orders;
