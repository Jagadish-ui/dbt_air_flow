select
    o.order_id,
    o.customer_id,
    o.order_status,
    o.order_date,
    li.line_number,
    li.part_id,
    li.quantity,
    li.extended_price,
    li.discount_pct,
    li.tax_pct,
    -- net revenue per line item after discount
    li.extended_price * (1 - li.discount_pct) as net_revenue,
    li.return_flag,
    li.line_status
from {{ ref('stg_orders') }} o
inner join {{ ref('stg_lineitem') }} li
    on o.order_id = li.order_id