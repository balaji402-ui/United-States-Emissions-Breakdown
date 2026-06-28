select county_state_name, population,
       CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE) as Total_Emissions
from emissions.default.emissions_data     
where county_state_name IS NOT NULL
order by Total_Emissions desc
limit 10