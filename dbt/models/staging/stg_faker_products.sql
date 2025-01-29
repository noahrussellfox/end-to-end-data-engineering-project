select
  _airbyte_extracted_at,
  created_at,
  updated_at,
  id,
  make,
  model,
  year,
  price
from {{source("raw_data","faker_products")}}