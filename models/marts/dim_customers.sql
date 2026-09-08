select
    c.customer_id,
    c.customer_name,
    c.account_balance,
    n.nation_name
from {{ ref('stg_customers') }} c
left join {{ ref('stg_nation') }} n
    on c.nation_id = n.nation_id