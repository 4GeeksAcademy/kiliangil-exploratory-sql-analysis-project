SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM climate 
LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT "region_id" FROM regions;

-- MISSION 3
-- Your query here;
SELECT DISTINCT COUNT("species_id") FROM species;

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
HAVING COUNT(species_id)<5
ORDER BY observation_count ASC;

-- MISSION 9
-- Your query here;
SELECT observer, COUNT(*) AS total
FROM observations
GROUP BY observer
ORDER BY total DESC

-- MISSION 10
-- Your query here;
SELECT observations.id, regions.name AS region_name, observations.observation_date
FROM observations
JOIN regions ON observations.region_id = regions.id;

-- MISSION 11
-- Your query here;
SELECT observations.id, species.scientific_name 
FROM observations
JOIN species ON observations.species_id = species.id;

-- MISSION 12
-- Your query here;
SELECT regions.name AS region_name, species.common_name AS specie_name, COUNT(*) AS total_observations
FROM observations
JOIN regions ON observations.region_id = regions.id
JOIN species ON observations.species_id = species.id
GROUP BY regions.name, species.common_name
ORDER BY regions.name, total_observations DESC;




