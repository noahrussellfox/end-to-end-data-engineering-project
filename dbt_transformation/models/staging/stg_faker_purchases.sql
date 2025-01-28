select 
    _airbyte_extracted_at,
    created_at, 
    updated_at, 
    returned_at, 
    purchased_at, 
    id, 
    user_id, 
    product_id, 
    added_to_cart_at
from {{source("raw_data","faker_purchases")}}
where user_id in (
  select distinct id 
  from `transformed_data.stg_faker_users`
)