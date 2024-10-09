create database netflix_data_analysis;



CREATE TABLE movie_data (
    movie_name VARCHAR,
    genre VARCHAR,
    type VARCHAR,
    director VARCHAR,
    caste VARCHAR,
    country VARCHAR,
    release_year INT,
    rating VARCHAR,
    duration VARCHAR
);



select * from movie_data
	
	

# 1 trend of Content Release Over the Years

SELECT release_year, COUNT(*) AS content_count
FROM movie_data
GROUP BY release_year
ORDER BY release_year ASC;

# 2 Top Genres Released Over the Years 
	
SELECT release_year, genre, COUNT(*) AS genre_count
FROM movie_data
GROUP BY release_year, genre
ORDER BY release_year ASC, genre_count DESC;

# 3  Trend of Content Rating Over Time

SELECT release_year, rating, COUNT(*) AS rating_count
FROM movie_data
GROUP BY release_year, rating
ORDER BY release_year ASC, rating_count DESC;

# 4  Country-Wise Content Release Trends

SELECT release_year, country, COUNT(*) AS content_count
FROM movie_data
GROUP BY release_year, country
ORDER BY release_year ASC, content_count DESC;

# 5 Average Duration of Movies/TV Shows Over the Years


SELECT release_year, AVG(CAST(SUBSTR(duration, 1, LENGTH(duration)-4) AS INTEGER)) AS avg_duration
FROM movie_data
WHERE type = 'Movie'
GROUP BY release_year
ORDER BY release_year ASC;

# 6 Most Popular Genres by Country Over Time
	
SELECT country, genre, COUNT(*) AS genre_count
FROM movie_data
GROUP BY country, genre
ORDER BY country ASC, genre_count DESC;

# 7  Top Directors by Number of Releases Over Time

SELECT director, release_year, COUNT(*) AS release_count
FROM movie_data
WHERE director IS NOT NULL
GROUP BY director, release_year
ORDER BY release_year ASC, release_count DESC;


# Conclusion
These queries will help you perform a comprehensive trend analysis on your Netflix data. You can:

Track the number of releases per year.
Analyze the rise and fall of various genres.
Study how ratings and content types have shifted over time.
Explore country-based trends in content production.
For better insights, you can visualize the results using a tool like Matplotlib in Python, or directly in a database visualization tool such as SQL dashboards in Power BI, Tableau, or Grafana.


