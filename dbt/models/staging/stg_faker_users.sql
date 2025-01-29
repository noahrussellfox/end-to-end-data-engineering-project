select
  _airbyte_extracted_at,
  created_at,
  updated_at,
  id,
  name,
  age,
  email,
  title,
  gender,
  height,
  weight,
  address,
  language,
  telephone,
  blood_type,
  occupation,
  nationality
from {{source("raw_data","faker_users")}}
where lower(gender) in ('male','female')