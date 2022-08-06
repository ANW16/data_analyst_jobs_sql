-- Q1.
/*SELECT count(*)
FROM data_analyst_jobs;*/
-- Answer: 1793.

-- Q2.
/*SELECT * 
FROM data_analyst_jobs
LIMIT 10;*/
-- Answer: XTO Land Data Analyst.

-- Q3a.
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';*/
-- Answer: 21.

-- Q3b.
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN' 
OR location = 'KY';*/
-- Answer: 27.

-- Q4
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4;*/
-- Answer: 3.

-- Q5
/*SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count 
BETWEEN 500 AND 1000;*/
-- Answer: 151.

-- Q6
/*SELECT location, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
WHERE star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;*/
-- Answer: Nebraska.

-- Q7
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;*/
-- Answer:881.

-- Q8
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/
-- Answer: 230.

-- Q9
/*SELECT company, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;*/
-- Answer: 40.

-- Q10
/*SELECT company, AVG(star_rating) as avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000
AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;*/
-- Answer: Unilever, ~4.2 stars.

-- Q11
/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE UPPER(title) LIKE UPPER('%Analyst%');*/
-- Answer: W/DISTINCT, 774. W/O DISTINCT, 1669.

-- Q12
/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE UPPER(title) NOT LIKE UPPER('%Analyst%')
AND UPPER(title) NOT LIKE UPPER('%Analytics%');*/
-- Answer: 4 titles. Data and Tableau are common words among these job titles.

-- BONUS
/*SELECT DISTINCT domain, COUNT(domain) as number_of_postings
FROM data_analyst_jobs
WHERE domain IS NOT NULL
AND UPPER(skill) LIKE UPPER('%SQL%')
AND days_since_posting > 21
GROUP BY domain
ORDER BY number_of_postings DESC;*/
-- Answer: 
-- Internet and Software, 62 Postings
-- Banks and Financial Services, 61 Postings
-- Consulting and Business Services, 57 Postings
-- Health Care, 52 Postings