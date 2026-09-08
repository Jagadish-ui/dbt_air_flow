select
    order_id,
    customer_id,
    order_status,
    order_date,
    count(distinct line_number) as line_item_count,
    sum(quantity) as total_quantity,
    sum(net_revenue) as total_net_revenue
from {{ ref('int_order_items_joined') }}
group by 1, 2, 3, 4