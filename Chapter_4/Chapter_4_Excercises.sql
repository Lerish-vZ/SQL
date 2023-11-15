--------------------------------1---------------------------
COPY movies_info (id, movie, actor)
FROM 'C:\YourDirectory\movies_info'
WITH (FORMAT CSV, HEADER, DELIMITER ':');

--------------------------------2---------------------------
COPY (
    SELECT geo_name, state_us_abbreviation, housing_unit_count_100_percent
    FROM us_counties_2010
    ORDER BY housing_unit_count_100_percent DESC
    LIMIT 20;
    )
TO 'C:\YourDirectory\most_housing_units.csv'
WITH (FORMAT CSV, HEADER);