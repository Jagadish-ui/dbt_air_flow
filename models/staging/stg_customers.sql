select
    c_custkey as customer_id,
    c_name as customer_name,
    c_nationkey as nation_id,
    c_acctbal as account_balance
from {{ source('raw', 'raw_customers') }}