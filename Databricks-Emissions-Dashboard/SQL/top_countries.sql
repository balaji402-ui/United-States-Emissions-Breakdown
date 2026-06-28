select county_state_name, population,
       CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) / NULLIF(CAST(`population` AS DOUBLE), 0) as Emissions_per_person
from emissions.default.emissions_data
where county_state_name IS NOT NULL
order by emissions_per_person desc


