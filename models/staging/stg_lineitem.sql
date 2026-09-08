select
    l_orderkey as order_id,
    l_partkey as part_id,
    l_linenumber as line_number,
    l_quantity as quantity,
    l_extendedprice as extended_price,
    l_discount as discount_pct,
    l_tax as tax_pct,
    l_returnflag as return_flag,
    l_linestatus as line_status
from {{ source('raw', 'raw_lineitem') }}