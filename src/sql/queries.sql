SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
select * FROM climate LIMIT 10;

-- MISSION 2
-- Your query here;
select DISTINCT "region_id" FROM regions;

-- MISSION 3
-- Your query here;
select DISTINCT COUNT("species_id") FROM species;

-- MISSION 4
-- Your query here;

select COUNT("region_id") FROM observations WHERE "region_id" = 2;

-- MISSION 5
-- Your query here;
SELECT * FROM observations
WHERE observation_date = '1998-08-08';
-- MISSION 6
-- Your query here;
SELECT COUNT(region_id)
FROM observations
GROUP BY region_id;

-- MISSION 7
-- Your query here;
select species_id, COUNT(*) AS total_records
FROM observations
GROUP BY species_id
ORDER BY total_records DESC
LIMIT 5;

-- MISSION 8
-- Your query here;
SELECT * 
FROM observations
GROUP BY  species_id
HAVING COUNT(species_id)<5;
