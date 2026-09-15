# 🏥 Clinic Data Analysis Project

## 📌 Project Overview

This project focuses on analyzing clinic data to understand patient records, appointments, doctors, departments, revenue, waiting time, insurance status, and appointment outcomes.

The dataset was cleaned and analyzed using **Python, SQL, and Power BI** to generate meaningful business insights and create an interactive dashboard.

---

## 🎯 Project Objectives

- Clean and prepare raw clinic data
- Analyze patient demographics
- Understand department-wise performance
- Analyze doctor-wise appointments and revenue
- Calculate total and average clinic fees
- Analyze appointment status
- Study insurance status distribution
- Analyze patient waiting time
- Create an interactive Power BI dashboard
- Generate useful insights for clinic management

---

## 🛠️ Tools & Technologies Used

### Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

### SQL
- MySQL
- Data aggregation
- GROUP BY
- ORDER BY
- CASE statements
- Date-based analysis
- Subqueries

### Power BI
- Data visualization
- KPI cards
- Interactive dashboard
- Slicers and filters
- Revenue analysis
- Department and doctor analysis

---

## 🧹 Data Cleaning Process

The following data-cleaning steps were performed:

- Removed duplicate records
- Handled missing values
- Standardized text values
- Cleaned gender categories
- Removed extra spaces from column values
- Converted date columns into proper date format
- Converted fee values into numeric format
- Filled missing fees using grouped median values
- Created a full patient name column
- Reordered and renamed columns where required
- Checked data types and data consistency

---

## 📊 Key Analysis Performed

### Patient Analysis
- Total number of patients
- Age-wise patient distribution
- Gender-wise patient count
- Insurance status distribution

### Appointment Analysis
- Total appointments
- Completed appointments
- Cancelled appointments
- Pending appointments
- Appointment trends over time

### Doctor & Department Analysis
- Doctor-wise appointments
- Department-wise patient count
- Department-wise revenue
- Average fee by department
- Top-performing doctors

### Financial Analysis
- Total clinic revenue
- Average consultation fee
- Department-wise revenue
- Insurance-wise revenue
- Revenue by appointment status

### Operational Analysis
- Average patient waiting time
- Department-wise waiting time
- Appointment status analysis
- Patient and doctor performance insights

---

## 📈 Power BI Dashboard

The Power BI dashboard provides an interactive view of clinic performance.

### Dashboard Features

- Total Patients KPI
- Total Appointments KPI
- Total Revenue KPI
- Average Fee KPI
- Department-wise Revenue
- Doctor-wise Appointments
- Gender-wise Patient Distribution
- Insurance Status Analysis
- Appointment Status Analysis
- Waiting Time Analysis
- Interactive slicers for filtering data

---

## 💡 Business Insights

This project helps clinic management to:

- Identify high-performing departments
- Understand patient demographics
- Monitor appointment completion and cancellation
- Analyze clinic revenue
- Track doctor performance
- Improve patient waiting time
- Understand insurance coverage
- Make data-driven business decisions

---

## 📂 Project Structure

```text
Clinic-Data-Analysis/
│
├── clinic_unclean.csv
├── clinic_cleaned.csv
├── Clinic_Data_Analysis.ipynb
├── Clinic_SQL_Analysis.sql
├── Clinic_Dashboard.pbix
└── README.md
