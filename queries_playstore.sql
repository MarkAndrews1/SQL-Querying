-- Comments in SQL Start with dash-dash --

-- 1.
  SELECT * FROM analytics WHERE id = 1880;

-- 2.
  SELECT app_name, id FROM analytics WHERE last_updated = '2018-8-01';

-- 3.
  SELECT category, COUNT(category) FROM analytics GROUP BY category;

-- 4.
  SELECT app_name, reviews FROM analytics
  ORDER BY reviews DESC
  LIMIT 5;

-- 5.
   SELECT app_name, reviews FROM analytics
   WHERE rating >= 4.8 
   ORDER BY reviews DESC
   LIMIT 1;

-- 6.
  SELECT category, AVG(rating) FROM analytics 
  GROUP BY category 
  ORDER BY AVG DESC;

-- 7.
  SELECT app_name, MAX(price), rating FROM analytics 
  WHERE rating < 3 
  GROUP BY rating, app_name 
  ORDER BY max DESC
  LIMIT 1;

-- 8.
  SELECT * FROM analytics 
  WHERE min_installs = 50 
  AND rating IS NOT NULL 
  ORDER BY rating DESC;;

-- 9.
  SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;

-- 10.
  SELECT app_name, reviews, price FROM analytics
  WHERE price BETWEEN .1 AND 1
  ORDER BY reviews DESC
  LIMIT 10;

-- 11.
  SELECT app_name, MIN(last_updated) FROM analytics
  GROUP BY app_name
  ORDER BY MIN
  LIMIT 1; 

-- 12.
  SELECT app_name, MAX(price) FROM analytics 
  GROUP BY app_name 
  ORDER BY max DESC
  LIMIT 1;

-- 13.
  SELECT SUM(reviews) FROM analytics ;

-- 14.
  SELECT category FROM analytics
  GROUP BY category
  HAVING COUNT(category) > 300;

-- 15.
  SELECT app_name, reviews, min_installs, min_installs / reviews AS portion FROM analytics 
  WHERE min_installs >= 100000
  ORDER BY portion DESC 
  LIMIT 1;