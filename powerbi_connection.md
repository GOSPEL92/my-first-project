Connecting Power BI to SQL Server (HospitalPerformance Database)

1. Prerequisites
Installed Power BI Desktop.

Running SQL Server instance with the HospitalPerformance database.

Tables created via Python pipeline (complications, clinical_cleaned, engagement_cleaned, tps_cleaned, etc.).
 
 2. Steps to Connect
Open Power BI Desktop.

Go to Home → Get Data → SQL Server.

3. Enter:

   . Server name: DESKTOP-HRV (or your actual instance).

   . Database name: HospitalPerformance.

4. Choose Windows Authentication (or SQL login if configured).

5. Click OK.

3. Load Tables
In the Navigator window, select:

dbo.complications

dbo.clinical_cleaned

dbo.engagement_cleaned

dbo.tps_cleaned

 Click Load.

4. Verify Data
  . Switch to Data view in Power BI.

  . Confirm rows are visible for each table.

5. Build Visualizations
  . Create charts and KPIs:

  . Bar chart: complications by hospital.

  . Line chart: engagement trends.

  . KPI cards: TPS scores.

  . Table: clinical outcomes vs. hospital info.

6. Refresh Data
  . Click Refresh in Power BI Desktop.

  . If publishing to Power BI Service, schedule automatic refreshes.