-- 4
SELECT spacecraft, launch_date, outcome
FROM moon_mission;

-- 5
SELECT *
FROM moon_mission
WHERE outcome = 'Launch failure';

-- 6
SELECT *
FROM moon_mission
WHERE launch_date < '1960-01-01'
ORDER BY launch_date;

-- 7
-- Frågar här efter data som börjar på Luna, men fortsättningen är valfri vilket gör att Lunar också kvalificeras.
-- Lösning kan vara att köra 'Luna %'. Viktigt mellanslag!
SELECT *
FROM moon_mission
WHERE spacecraft LIKE 'Luna%'
ORDER BY spacecraft;

-- 8
SELECT *
FROM moon_mission
ORDER BY launch_date DESC
LIMIT 3;

-- 9
SELECT *
FROM account
WHERE last_name IN ('Åström','Fransson')
ORDER BY first_name;

-- 10
-- Ger 0 rader eftersom operator-värdena innehåller mellanslag,
-- t.ex. 'NA SA' i stället för 'NASA', så en exakt matchning med = misslyckas.
SELECT *
FROM moon_mission
WHERE operator = 'NASA';

-- 11
-- Ger 1 rad, men borde ge 2. Ett uppdrag har ' Impactor' med ett
-- mellanslag först, så den exakta matchningen med = hittar det inte.
SELECT *
FROM moon_mission
WHERE mission_type = 'Impactor';

-- 12
-- 12a
INSERT INTO moon_mission (spacecraft, launch_date, carrier_rocket, operator, mission_type, outcome)
VALUES ('Test Mission 1', '1995-05-10', 'Test Rocket', 'Test Operator', 'Orbiter', 'Planned');

SELECT *
FROM moon_mission
WHERE spacecraft = 'Test Mission 1';
-- Den fick mission_id: 19

-- 12b
UPDATE moon_mission
SET outcome = 'Successful'
WHERE mission_id = 19;

SELECT *
FROM moon_mission
WHERE mission_id = 19;

-- 12c
DELETE FROM moon_mission
WHERE mission_id = 19;

SELECT *
FROM moon_mission
WHERE mission_id = 19;

-- 13
UPDATE moon_mission
SET outcome = 'Successful'
WHERE mission_id = 12;

SELECT *
FROM moon_mission
WHERE spacecraft = 'Chandrayaan-2';

-- 14
DELETE FROM moon_mission
WHERE launch_date >= '2010-01-01';

SELECT *
FROM moon_mission;





