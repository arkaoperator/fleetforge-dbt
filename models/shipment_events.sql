-- Table: shipment_events
-- Logs per-shipment activity. One row per leg/part.

SELECT
  l_orderkey AS shipment_id,        -- FK to shipments
  l_partkey AS part_id,
  l_suppkey AS depot_id,
  l_extendedprice AS shipping_fee,  -- Includes surcharges
  l_linestatus AS delivery_status,  -- 'F' = Delivered, 'O' = In Transit
  l_shipdate AS shipped_at,
  l_receiptdate AS delivered_at
FROM raw.lineitem;
