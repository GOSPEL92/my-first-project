SELECT name 
FROM sys.databases;

USE HospitalPerformance;
GO

SELECT DB_NAME() AS CurrentDatabase;
SELECT name 
FROM sys.tables;

USE HospitalPerformance;
GO

-- 1. Hospital General Information
CREATE TABLE Hospital_General_Information (
    ProviderID INT PRIMARY KEY,
    HospitalName NVARCHAR(255),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(50),
    ZIPCode NVARCHAR(20),
    PhoneNumber NVARCHAR(50),
    HospitalType NVARCHAR(100),
    HospitalOwnership NVARCHAR(100),
    EmergencyServices BIT
);

-- 2. Complications and Deaths
CREATE TABLE Complications_and_Deaths_Hospital (
    ProviderID INT,
    MeasureID NVARCHAR(50),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    Sample NVARCHAR(50),
    Footnote NVARCHAR(255),
    PRIMARY KEY (ProviderID, MeasureID)
);

-- 3. HVBP Clinical Outcomes
CREATE TABLE hvbp_clinical_outcomes (
    ProviderID INT,
    MeasureID NVARCHAR(50),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    PRIMARY KEY (ProviderID, MeasureID)
);

-- 4. HVBP Person and Community Engagement
CREATE TABLE hvbp_person_and_community_engagement (
    ProviderID INT,
    MeasureID NVARCHAR(50),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    PRIMARY KEY (ProviderID, MeasureID)
);

-- 5. HVBP Total Performance Score (TPS)
CREATE TABLE hvbp_tps (
    ProviderID INT PRIMARY KEY,
    TPS FLOAT,
    DomainScore FLOAT
);

-- 6. Unplanned Hospital Visits
CREATE TABLE Unplanned_Hospital_Visits_Hospital (
    ProviderID INT,
    MeasureID NVARCHAR(50),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    PRIMARY KEY (ProviderID, MeasureID)
);
USE HospitalPerformance;
GO

SELECT name 
FROM sys.tables;

