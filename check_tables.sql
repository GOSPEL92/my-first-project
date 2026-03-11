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
