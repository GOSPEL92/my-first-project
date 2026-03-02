#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd
from sqlalchemy import create_engine


# In[2]:


server = "DESKTOP-HRV6DMT\SQLEXPRESS"   # or your SQL Server instance name
database = "HospitalPerformance"
driver = "ODBC Driver 17 for SQL Server"

connection_string = f"mssql+pyodbc://@{server}/{database}?driver={driver}"
engine = create_engine(connection_string)


# In[3]:


csv_file = r"C:\HospitalData\Complications_and_Deaths-Hospital.csv"
df = pd.read_csv(csv_file, encoding="utf-8")

# Optional cleaning: convert numeric columns safely
df["Denominator"] = pd.to_numeric(df["Denominator"], errors="coerce")
df["Score"] = pd.to_numeric(df["Score"], errors="coerce")

df.head()  # preview first 5 rows


# In[4]:


df.rename(columns={
    "Facility ID": "FacilityID",
    "Facility Name": "FacilityName",
    "City/Town": "CityTown",
    "ZIP Code": "ZIPCode",
    "County/Parish": "CountyParish",
    "Telephone Number": "TelephoneNumber",
    "Measure ID": "MeasureID",
    "Measure Name": "MeasureName",
    "Compared to National": "ComparedToNational",
    "Denominator": "Denominator",
    "Score": "Score",
    "Lower Estimate": "LowerEstimate",
    "Higher Estimate": "HigherEstimate",
    "Footnote": "Footnote",
    "Start Date": "StartDate",
    "End Date": "EndDate"
}, inplace=True)


# In[5]:


df.to_sql("Complications_and_Deaths_Hospital", con=engine, if_exists="append", index=False)


# In[6]:


import pandas as pd

# Full path to your CSV file (must include .csv extension)
csv_file = r"C:\HospitalData\Hospital_General_Information.csv"

# Load the CSV
df = pd.read_csv(csv_file, encoding="utf-8")

# Optional cleaning: convert numeric columns safely
if "Denominator" in df.columns:
    df["Denominator"] = pd.to_numeric(df["Denominator"], errors="coerce")

if "Score" in df.columns:
    df["Score"] = pd.to_numeric(df["Score"], errors="coerce")

# Preview first 5 rows
df.head()


# In[7]:


df.to_sql("Hospital_General_Information", engine, if_exists="replace", index=False) 


# In[8]:


import pandas as pd

# Full path to your CSV file (must include .csv extension)
csv_file = r"C:\HospitalData\hvbp_clinical_outcomes.csv"

# Load the CSV
df = pd.read_csv(csv_file, encoding="utf-8")

# Optional cleaning: convert numeric columns safely
if "Denominator" in df.columns:
    df["Denominator"] = pd.to_numeric(df["Denominator"], errors="coerce")

if "Score" in df.columns:
    df["Score"] = pd.to_numeric(df["Score"], errors="coerce")

# Preview first 5 rows
df.head()


# In[9]:


df.to_sql("hvbp_clinical_outcomes", engine, if_exists="replace", index=False)


# In[10]:


print("Uploaded hvbp_clinical_outcomes with", len(df), "rows")


# In[11]:


import pandas as pd

# Full path to your CSV file (must include .csv extension)
csv_file = r"C:\HospitalData\hvbp_tps.csv"

# Load the CSV
df = pd.read_csv(csv_file, encoding="utf-8")

# Optional cleaning: convert numeric columns safely
if "Denominator" in df.columns:
    df["Denominator"] = pd.to_numeric(df["Denominator"], errors="coerce")

if "Score" in df.columns:
    df["Score"] = pd.to_numeric(df["Score"], errors="coerce")

# Preview first 5 rows
df.head()


# In[12]:


df.to_sql("hvbp_tps", engine, if_exists="replace", index=False)


# In[13]:


print("hvbp_tps", len(df), "rows")


# In[14]:


import pandas as pd

# Full path to your CSV file (must include .csv extension)
csv_file = r"C:\HospitalData\Unplanned_Hospital_Visits-Hospital.csv"

# Load the CSV
df = pd.read_csv(csv_file, encoding="utf-8")

# Optional cleaning: convert numeric columns safely
if "Denominator" in df.columns:
    df["Denominator"] = pd.to_numeric(df["Denominator"], errors="coerce")

if "Score" in df.columns:
    df["Score"] = pd.to_numeric(df["Score"], errors="coerce")

# Preview first 5 rows
df.head()


# In[15]:


df.to_sql("Unplanned_Hospital_Visits-Hospital", engine, if_exists="replace", index=False)


# In[16]:


print("Unplanned_Hospital_Visits-Hospital", len(df), "rows")


# In[ ]:




