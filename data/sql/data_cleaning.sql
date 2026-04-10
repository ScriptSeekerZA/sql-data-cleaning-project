-- 1. View raw data
SELECT * FROM raw_data;

-- 2. Remove duplicates
SELECT DISTINCT * FROM raw_data;

-- 3. Handle NULL values
SELECT 
    id,
    name,
    city,
    COALESCE(sales, 0) AS sales,
    date
FROM raw_data;

-- 4. Standardize text
SELECT 
    id,
    TRIM(LOWER(name)) AS name,
    TRIM(LOWER(city)) AS city,
    sales,
    date
FROM raw_data;

-- 5. Fix date formats (example depends on SQL system)
-- This will vary depending on MySQL, SQL Server, etc.

-- 6. Create cleaned table
CREATE TABLE cleaned_data AS
SELECT DISTINCT
    id,
    TRIM(LOWER(name)) AS name,
    TRIM(LOWER(city)) AS city,
    COALESCE(sales, 0) AS sales,
    date
FROM raw_data;
