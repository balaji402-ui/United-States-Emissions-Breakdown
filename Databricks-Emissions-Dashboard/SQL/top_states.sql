select state_abbr,
       sum(CAST(REPLACE(`GHG emissions mtons CO2e`, ',', '') AS DOUBLE)) as Total_emissions
from emissions.default.emissions_data
where county_state_name IS NOT NULL
group by state_abbr
order by Total_emissions desc
limit 10
