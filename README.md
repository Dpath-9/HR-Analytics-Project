# 🧑‍💼 HR Analytics Project

This is an end-to-end HR Analytics project aimed at exploring, cleaning, analyzing, and visualizing employee data using the following tools:

- **Excel** – Data cleaning, feature engineering, and preliminary analysis  
- **SQL (MS SQL Server)** – Structured queries for actionable insights  
- **Power BI** – [Coming soon] Interactive dashboards and visualization  
- **Python** – [Coming soon] Exploratory Data Analysis and automation

---

## 🔍 Project Objectives

- Clean inconsistent date formats (DOB, Hire Date, Termination Date)
- Derive key metrics: Age, Tenure, Attrition
- Understand employee demographics and attrition trends
- Perform SQL-based deep analysis for HR reporting
- Build dashboards and visuals for HR stakeholders

---

## 📁 Folder Structure

HR-Analytics-Project/
├── data/ # Raw and cleaned datasets
├── excel_cleaning/ # Excel files with data preprocessing
├── sql_queries/ # SQL scripts and insights
├── powerbi_reports/ # Power BI dashboards (coming soon)
├── python_analysis/ # Jupyter notebooks or scripts (coming soon)
└── README.md # Project documentation


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
