-- Moderate Level --

-- 1. Count total Athletes --

SELECT COUNT(*) AS total_athletes
FROM athlete_olympics;

-- 2. Average age --

SELECT AVG(Age) AS avg_age
FROM athlete_olympics;

-- 3. Maximum height --

SELECT MAX(Height) AS max_height
FROM athlete_olympics;

-- 4. Minimum weight --

SELECT MIN(Weight) AS min_weight
FROM athlete_olympics;

-- 5. Femail atheletes count --

SELECT COUNT(*) AS female_athletes
FROM athlete_olympics
WHERE Sex = 'F';

-- 6. Summer season athletes --

SELECT COUNT(*) AS summer_athletes
FROM athlete_olympics
WHERE Season = 'Summer';

-- 7. Average weight --

SELECT AVG(Weight) AS avg_weight
FROM athlete_olympics;

-- 8. Distinct sports --

SELECT COUNT(DISTINCT Sport) AS total_sports
FROM athlete_olympics;

-- 9. Youngest athelete --

SELECT MIN(Age) AS youngest_age
FROM athlete_olympics;

-- 10. Oldest athelete --

SELECT MAX(Age) AS oldest_age
FROM athlete_olympics;

--  Intermediate Level --

-- 1. Athletes per sports --

SELECT Sport, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Sport;

-- 2. Average age per sports --

SELECT Sport, AVG(Age) AS avg_age
FROM athlete_olympics
GROUP BY Sport;

-- 3. Maximum height per sports --

SELECT Sport, MAX(Height) AS max_height
FROM athlete_olympics
GROUP BY Sport;

-- 4. Athletes per country --

SELECT Team, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Team;

-- 5. Average weight by sex --

SELECT Sex, AVG(Weight) AS avg_weight
FROM athlete_olympics
GROUP BY Sex;

-- 6. Minimum age per Olympic year --

SELECT Year, MIN(Age) AS youngest_age
FROM athlete_olympics
GROUP BY Year;

-- 7. Medals by country --

SELECT Team, COUNT(Medal) AS total_medals
FROM athlete_olympics
WHERE Medal IS NOT NULL
GROUP BY Team;

-- 8. Average height per season --

SELECT Season, AVG(Height) AS avg_height
FROM athlete_olympics
GROUP BY Season;

-- 9. Maximum weight per sport --

SELECT Sport, MAX(Weight) AS max_weight
FROM athlete_olympics
GROUP BY Sport;

-- 10. Athletes per olympic year --

SELECT Year, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Year;

-- Advanced Level --

-- 1. Sports with average age > 30 --

SELECT Sport, AVG(Age) AS avg_age
FROM athlete_olympics
GROUP BY Sport
HAVING AVG(Age) > 30;

-- 2. Teams with more than 1000 athletes --

SELECT Team, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Team
HAVING COUNT(*) > 1000;

-- 3. Sports with more than 500 athletes --

SELECT Sport, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Sport
HAVING COUNT(*) > 500;

-- 4. Olympic years with more than 2000 athletes --

SELECT Year, COUNT(*) AS athlete_count
FROM athlete_olympics
GROUP BY Year
HAVING COUNT(*) > 2000;

-- 5. Teams with average height > 180 --

SELECT Team, AVG(Height) AS avg_height
FROM athlete_olympics
GROUP BY Team
HAVING AVG(Height) > 180;

-- 6. Sports with max weight > 120 --

SELECT Sport, MAX(Weight) AS max_weight
FROM athlete_olympics
GROUP BY Sport
HAVING MAX(Weight) > 120;

-- 7. Country with more than 100 medals --

SELECT Team, COUNT(Medal) AS medal_count
FROM athlete_olympics
WHERE Medal IS NOT NULL
GROUP BY Team
HAVING COUNT(Medal) > 100;

-- 8. Sports with avg weight > 80 --

SELECT Sport, AVG(Weight) AS avg_weight
FROM athlete_olympics
GROUP BY Sport
HAVING AVG(Weight) > 80;

-- 9. Olympic years with more than 100 medals --

SELECT Year, COUNT(Medal) AS medal_count
FROM athlete_olympics
WHERE Medal IS NOT NULL
GROUP BY Year
HAVING COUNT(Medal) > 100;

-- 10. Teams with avg age > 28 --

SELECT Team, AVG(Age) AS avg_age
FROM athlete_olympics
GROUP BY Team
HAVING AVG(Age) > 28;