# SQL Data Cleaning Project

## Problem
The dataset contains common real-world data quality issues:
- Duplicate records
- Missing values
- Inconsistent text formatting
- Mixed date formats

These issues make analysis unreliable.

---

## Dataset
A small sales dataset with fields:
- id
- name
- city
- sales
- date

The raw dataset intentionally includes errors to simulate real-world data.

---

## Cleaning Steps

1. Removed duplicates  
Used DISTINCT to eliminate repeated rows.

2. Handled missing values  
Replaced NULL sales values with 0 using COALESCE.

3. Standardized text  
Converted text to lowercase and removed extra spaces using TRIM and LOWER.

4. Reviewed date formats  
Identified inconsistent formats for correction.

5. Created cleaned dataset  
Built a final cleaned table for analysis.

---

## SQL Example

```sql
SELECT DISTINCT
    id,
    TRIM(LOWER(name)) AS name,
    TRIM(LOWER(city)) AS city,
    COALESCE(sales, 0) AS sales,
    date
FROM raw_data;
