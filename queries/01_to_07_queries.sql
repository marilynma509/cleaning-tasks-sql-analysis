-- =====================================================
-- Cleaning Tasks SQL Analysis
-- Dataset: 180 anonymised cleaning records (Mar–Aug 2026)
-- =====================================================

-- 1. Monthly task count trend
SELECT 
    DATE_FORMAT(Clean_Date, '%Y-%m') AS YearMonth,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY DATE_FORMAT(Clean_Date, '%Y-%m')
ORDER BY YearMonth ASC;

-- 2. Tasks by Region (highest to lowest)
SELECT 
    Region,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY Region
ORDER BY TaskCount DESC;

-- 3. Tasks by Source comparison
SELECT 
    Source,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY Source
ORDER BY TaskCount DESC;

-- 4. Monthly trend by Source
SELECT 
    DATE_FORMAT(Clean_Date, '%Y-%m') AS YearMonth,
    Source,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY DATE_FORMAT(Clean_Date, '%Y-%m'), Source
ORDER BY YearMonth, Source;

-- 5. Guest status distribution
SELECT 
    Guest,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY Guest
ORDER BY TaskCount DESC;

-- 6. Busiest weeks analysis
SELECT 
    DATE_FORMAT(Clean_Date, '%Y-%u') AS YearWeek,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
GROUP BY DATE_FORMAT(Clean_Date, '%Y-%u')
ORDER BY TaskCount DESC;

-- 7. Central region monthly trend
SELECT 
    DATE_FORMAT(Clean_Date, '%Y-%m') AS YearMonth,
    COUNT(*) AS TaskCount
FROM cleaning_tasks
WHERE Region = 'Central'
GROUP BY DATE_FORMAT(Clean_Date, '%Y-%m')
ORDER BY YearMonth ASC;
