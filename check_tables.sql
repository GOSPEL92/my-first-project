USE HospitalPerformance;
GO
SELECT TABLE_SCHEMA, TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';


SELECT TOP 5 * FROM dbo.complications;
SELECT TOP 5 * FROM dbo.clinical_cleaned;
SELECT TOP 5 * FROM dbo.engagement_cleaned;
SELECT TOP 5 * FROM dbo.tps_cleaned;

SELECT COUNT(*) AS rows_in_complications FROM dbo.complications;
SELECT COUNT(*) AS rows_in_clinical FROM dbo.clinical_cleaned;
SELECT COUNT(*) AS rows_in_engagement FROM dbo.engagement_cleaned;
SELECT COUNT(*) AS rows_in_tps FROM dbo.tps_cleaned;

USE HospitalPerformance;

SELECT COUNT(*) AS ComplicationsCount
FROM dbo.complications;

USE HospitalPerformance;

USE HospitalPerformance;
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'complications';

USE HospitalPerformance;

SELECT facility_id, facility_name, COUNT(*) AS ComplicationsCount
FROM dbo.complications
GROUP BY facility_id, facility_name
ORDER BY ComplicationsCount DESC;


