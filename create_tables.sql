-- 1. Hospital General Information
CREATE TABLE HospitalGeneralInfo (
    ProviderID VARCHAR(20) PRIMARY KEY,
    HospitalName NVARCHAR(255),
    Address NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(50),
    ZipCode VARCHAR(10),
    HospitalType NVARCHAR(100),
    Ownership NVARCHAR(100)
);

-- 2. Complications and Deaths – Hospital
CREATE TABLE ComplicationsDeathsHospital (
    ProviderID VARCHAR(20),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    ComparisonToNational NVARCHAR(50),
    FOREIGN KEY (ProviderID) REFERENCES HospitalGeneralInfo(ProviderID)
);

-- 3. Unplanned Hospital Visits – Hospital
CREATE TABLE UnplannedHospitalVisitsHospital (
    ProviderID VARCHAR(20),
    MeasureName NVARCHAR(255),
    Score FLOAT,
    ComparisonToNational NVARCHAR(50),
    FOREIGN KEY (ProviderID) REFERENCES HospitalGeneralInfo(ProviderID)
);

-- 4. HVBP – Clinical Outcomes Domain Scores
CREATE TABLE HVBPClinicalOutcomes (
    ProviderID VARCHAR(20),
    DomainScore FLOAT,
    FOREIGN KEY (ProviderID) REFERENCES HospitalGeneralInfo(ProviderID)
);

-- 5. HVBP – Person and Community Engagement (HCAHPS)
CREATE TABLE HVBPHCAHPS (
    ProviderID VARCHAR(20),
    DomainScore FLOAT,
    FOREIGN KEY (ProviderID) REFERENCES HospitalGeneralInfo(ProviderID)
);

-- 6. HVBP – Total Performance Score
CREATE TABLE HVBPTotalPerformance (
    ProviderID VARCHAR(20),
    TotalPerformanceScore FLOAT,
    PaymentAdjustment FLOAT,
    FOREIGN KEY (ProviderID) REFERENCES HospitalGeneralInfo(ProviderID)
);
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';
