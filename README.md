# Cleaning Tasks SQL Analysis

SQL practice project based on real short-term rental cleaning operations data (anonymised).

## Project Overview
- **Data source:** Two Operto systems (SparkClean + William Corp)
- **Records:** 180 cleaning tasks (Mar–Aug 2026)
- **Focus:** Time trends, regional workload, source comparison

## Table Structure
| Column | Type | Description |
|--------|------|-------------|
| Region | VARCHAR | Central / North / West / East / Other |
| Clean_Date | DATE | Cleaning service date |
| Guest | VARCHAR | Reserved / Guest / Closed |
| Source | VARCHAR | SparkClean or William Corp |

## Queries Included
1. Monthly task count trend
2. Tasks by Region (ranked)
3. Tasks by Source comparison
4. Monthly trend by Source
5. Guest status distribution
6. Busiest weeks analysis
7. Central region monthly trend

## Key Findings
- March and July were the busiest months
- Central region accounted for the majority of tasks (~64%)
- SparkClean and William Corp volumes were relatively balanced
- Most tasks were standard guest stays

## Skills Practised
- `DATE_FORMAT`, `GROUP BY`, `COUNT`
- `WHERE` filtering
- `ORDER BY` ranking
- Multi-column grouping

## Files
- `queries/01_to_07_queries.sql` — all practice queries with comments
