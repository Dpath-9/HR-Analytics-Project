# HR Analytics Project

This is an end-to-end HR analytics project aimed at exploring, cleaning, analyzing, and visualizing employee data using the following tools:

- **Excel** – Data cleaning and basic analysis
- **SQL** – Querying structured insights
- **Power BI** – Interactive dashboards and visualization
- **Python** – Exploratory Data Analysis and automation

---

## 🔍 Objectives

- Clean inconsistent date formats (DOB, Hire Date, Termination Date)
- Derive key metrics: Age, Tenure, Attrition
- Understand employee demographics and attrition trends
- Build dashboards for HR stakeholders

---

## 📁 Folder Structure

HR-Analytics-Project/
├── data/
├── excel_cleaning/
├── sql_queries/
├── powerbi_reports/
├── python_analysis/
└── README.md

---

## 📌 Current Status
✅ Uploaded raw HR dataset  
🔄 Cleaning date columns in Excel  
...

---

## 🧼 Data Cleaning Notes

### 🗓 Handling Mixed Date Formats in Excel

While cleaning the `DOB` column, the dataset had inconsistent formats like `02-11-1970` and `05/24/79`. Some were recognized as dates, while others were stored as text due to system locale differences.

**Fix Applied:**
Used Excel’s `Text to Columns` → selected `Date` format → chose `MDY`.  
This converted all entries into proper date format (`dd-mm-yyyy`) for consistent downstream use like age and tenure calculations.

✅ This step was crucial to avoid calculation errors and reflects real-world challenges in raw HR data.

---

## 🚀 Tools & Technologies
- Excel
- SQL Server
- Power BI
- Python
- GitHub

---

## 🙋‍♀️ About Me

**Deepshikha Pathariya**  
🎯 Transitioning from VFX Compositing to Data Analytics  
📚 Learner at AnalytixLabs | Skilled in Excel, SQL, Power BI & Python  
🔗 [LinkedIn](https://www.linkedin.com/in/deepshikhap) • [GitHub](https://github.com/Dpath-9)

