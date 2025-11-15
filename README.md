# Employee Performance & Risk Audit: Quantified Insights

## Executive Summary

This project establishes a data-driven system to audit performance, managerial risk, and departmental efficiency across a 100,000-record workforce. The final Power BI dashboard provides executives and HR with actionable insights to precisely target interventions in training and retention.

**Note:** The full interactive report file ("C:\Users\Dhrithi K.A\Desktop\Emp_Performance\Final_Dashboard.png") is available in the repository.

***

## The Analytical Pipeline & Stack

This analysis followed a complete end-to-end data pipeline, demonstrating proficiency across all phases of data engineering and analysis.

| Tool | Focus Area | Skill Demonstrated |
| :--- | :--- | :--- |
| **SQL (MySQL)** | **Advanced Metrics:** Created custom KPIs like **Performance Inconsistency (STDDEV)** and used **NULLIF** logic for robust cost calculations. | Statistical Logic & Advanced Aggregation |
| **Python (Pandas)** | **ETL Solution:** Handled initial data cleaning and ensured reliable data load, bypassing technical import failures. | Pipeline Management & Data Preparation |
| **Power BI** | **Executive Storytelling:** Dashboard Design with DAX-driven conditional formatting for risk highlighting. | Data Visualization & UX |

***

## Key Quantifiable Discoveries (The Impact)

The analysis was driven by custom metrics that go beyond simple averages, leading to these three major findings:

### 1. High-Risk Outlier Detection (Management Inconsistency)

* **Finding:** A **Risk Matrix (Scatter Plot)** proved that high managerial inconsistency correlates strongly with employee turnover.
* **Result:** The **Legal** and **IT** departments were isolated as high-risk outliers, with Legal recording the highest **Performance Inconsistency ($\approx 1.424$ StdDev)**.
* **Recommendation:** Implement mandatory manager calibration training to standardize performance reviews across all departments.

### 2. Cost & Efficiency Gap Analysis

* **Finding:** Calculated a novel **Salary Efficiency** metric (`Cost per Project`) to identify operational cost centers.
* **Result:** The **IT department** was flagged as the least cost-efficient labor unit, with the highest average cost of **$\approx \$603.21$ per project**.
* **Recommendation:** Conduct an immediate audit of IT project scoping and resource allocation to improve efficiency.

### 3. Critical Morale & Retention Signal

* **Finding:** Analysis revealed a significant divergence between employee satisfaction and official performance scores.
* **Result:** The **Customer Support** department displayed the lowest **Avg Satisfaction ($\approx 2.97$)**, despite acceptable performance scores.
* **Recommendation:** Initiate a targeted workload review and support program to mitigate high burnout and future attrition risk.

***

## Project Files

* "C:\Users\Dhrithi K.A\Desktop\Emp_Performance\Emp_performance.sql": Finalized SQL code used for complex aggregation and KPI creation.
* "C:\Users\Dhrithi K.A\Desktop\Emp_Performance\Final_department_KPi.csv": The clean, quantified dataset used for the dashboard.
* "C:\Users\Dhrithi K.A\Desktop\Emp_Performance\Emp_performance_dashboard.pbix": The final Power BI report file.
