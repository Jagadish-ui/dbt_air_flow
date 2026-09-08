select
    o_orderkey as order_id,
    o_custkey as customer_id,
    o_orderstatus as order_status,
    o_totalprice as order_total,
    o_orderdate as order_date
from {{ source('raw', 'raw_orders') }}