-- Rank country origins of bands based on the number of (non-unique) fans
-- Import the table dump "metal_bands.sql.zip"
-- Output columns: origin (country origin of the band), nb_fans (number of fans)
-- Order the output by nb_fans in descending order
WITH fan_counts AS (
	SELECT 
    		origin,
    		COUNT(fan) AS nb_fans
  	FROM 
    		metal_bands
  	GROUP BY 
    		origin
	)
SELECT 
  	origin, 
  	nb_fans
FROM 
  	fan_counts
ORDER BY 
  	nb_fans DESC

