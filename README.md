# 🧑‍💼 HR Analytics & Employee Attrition Analysis

This project analyzes employee data to identify key factors influencing employee attrition.
The analysis is performed using Python with data cleaning, exploratory data analysis (EDA), and visualization techniques.

## Tech Stack

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Power BI
---
## Dataset

The dataset contains employee information such as:

- Age
- Job Role
- Department
- Monthly Income
- Years at Company
- Overtime
- Attrition (Yes/No)

The goal is to analyze these features to understand factors contributing to employee attrition.

## 🔍 Project Workflow

1. Data Loading – Imported the HR dataset into Python environment.
2. Data Cleaning – Checked for missing values, duplicates, and corrected data types.
3. Exploratory Data Analysis (EDA) – Analyzed patterns related to employee attrition.
4. Data Visualization – Used charts and graphs to understand trends.
5. Insights Generation – Identified key factors influencing employee turnover.
---
## Key Insights

- Employees with lower salary levels show higher attrition rates.
- Employees working overtime are more likely to leave the company.
- Certain job roles have significantly higher attrition compared to others.
- Employees with fewer years at the company tend to leave more frequently.

## Business Impact

The insights from this analysis can help organizations:

- Identify employees at high risk of leaving.
- Improve employee retention strategies.
- Optimize salary and promotion policies.
- Reduce recruitment and training costs caused by high attrition.
- 
## 📁 Folder Structure

HR-Analytics-Project/
├── data/ # Raw and cleaned datasets
├── excel_cleaning/ # Excel files with data preprocessing
├── sql_queries/ # SQL scripts and insights
├── powerbi_reports/ # Power BI dashboards (coming soon)
├── python_analysis/ # Jupyter notebooks or scripts (coming soon)
└── README.md # Project documentation

## Future Improvements

- Build a machine learning model to predict employee attrition.
- Perform feature importance analysis to understand key drivers of attrition.
- Deploy the model as a simple web app for HR teams.


---

## 🧼 Data Cleaning in Excel

### 🗓 Mixed Date Format Fix (DOB, Hire Date)

The `DOB` column contained mixed formats like `02-11-1970` and `05/24/79`. Some were recognized as dates, others as text, due to locale inconsistencies.

**Fix Applied:**  
Used **Text to Columns** → Delimited → **Date: MDY** to convert everything into a consistent `dd-mm-yyyy` format.  
✅ Enabled accurate calculation of `Age`, `Tenure`, and `Attrition`.

### 📐 Feature Engineering in Excel

- Calculated **Age** using:  
  `=INT((TODAY()-[DOB])/365.25)`

- Calculated **Tenure** as years between Hire and Termination (or Today if active):  
  `=ROUNDDOWN((IF([Termination]="", TODAY(), [Termination]) - [Hire Date])/365.25, 1)`

- Created **Attrition Flag**:  
  Converted 'Yes'/'No' to binary for SQL analysis using `CAST(Attrition AS INT)`

---

## 🧠 Key SQL Insights (MS SQL Server)

- 📊 **Department-wise Attrition**  
  Identified high attrition rates in **Production (39.71%)** and **Software Engineering (36.36%)**.

- ⏳ **Average Tenure by Department**  
  Departments with high attrition showed **lower average tenure**.

- 👥 **Age Group Distribution**  
  Majority of employees are aged between **30–49 years**.

- 🚻 **Gender Diversity by Department**  
  Assessed male–female distribution across departments for diversity analysis.

- 🧲 **Attrition by Recruitment Source** *(optional, can be added later)*  
  Insight into which hiring sources had higher turnover rates.

> All SQL scripts are saved in the `sql_queries/` folder.

---

## 🚀 Tools & Technologies

- Excel  
- MS SQL Server  
- Power BI *(upcoming)*  
- Python *(upcoming)*  
- Git & GitHub  

---

## 🙋‍♀️ About Me

**Deepshikha Pathariya**  
🎯 Transitioning from **VFX Compositing** to **Data Analytics**  
📚 Learning from AnalytixLabs | Skills: Excel, SQL, Power BI, Python  
🔗 [LinkedIn](https://www.linkedin.com/in/deepshikhap) • [GitHub](https://github.com/Dpath-9)

---

## ✅ Project Status

- ✅ Uploaded raw dataset  
- ✅ Cleaned DOB, Hire Date, Termination Date  
- ✅ Created Age, Tenure, Attrition fields  
- ✅ Excel analysis complete  
- ✅ SQL insights implemented and reviewed  
- 🔄 Power BI & Python stages upcoming

---

> If you liked this project or found it useful, feel free to star 🌟 the repo and connect with me on LinkedIn!
