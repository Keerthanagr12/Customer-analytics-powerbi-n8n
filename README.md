# Automated E-Commerce Sales Intelligence & Anomaly Detection System

## 📌 Problem Statement
E-commerce businesses often rely on static dashboards to monitor sales and customer behavior.  
This approach is reactive and requires manual monitoring, which can delay the detection of critical issues such as rising churn risk or abnormal customer behavior.

---

## 🚀 Solution Overview
This project implements an end-to-end automated analytics system that:
- Segments customers using RFM analysis
- Tracks daily movement of customer segments
- Detects abnormal growth in high-risk segments
- Automatically sends Slack alerts when thresholds are breached

The system is fully automated and requires no manual intervention once deployed.

---

## 📊 Data Source
- **Dataset:** Online Retail Dataset (Kaggle)
- **Type:** Historical transactional data
- **Purpose:** Used to simulate real-world e-commerce transactions and customer behavior

---Kaggle Online Retail Data
↓
Data Cleaning & Preparation (SQL)
↓
RFM Metric Calculation
↓
Customer Segmentation
↓
Daily Segment Snapshot Table
↓
Automated Monitoring (n8n + JavaScript)
↓
Slack Alerts
---

## ⚙️ Key Features
- RFM-based customer segmentation
- Daily snapshot-based trend monitoring
- Detection of abnormal growth in "At Risk" customers
- Cooldown logic to prevent alert fatigue
- Automated Slack alerts for critical conditions

---

## 🛠️ Tech Stack
- **SQL (MySQL):** Data cleaning, RFM calculations, daily snapshots
- **n8n:** Workflow automation and scheduling
- **JavaScript:** Alert and anomaly detection logic
- **Power BI:** Exploratory analysis and dashboards
- **Slack:** Alert delivery mechanism

---

## 📁 Repository Structure

data/ → Raw Kaggle dataset and database schema
sql/ → SQL scripts for cleaning, RFM logic, snapshots
n8n/ → n8n workflow export and execution screenshots
Powerbi/ → Power BI dashboard and visuals
README.md → Project documentation
---

## 🔄 How It Works
1. Transactional data is cleaned and transformed into customer-level RFM metrics.
2. Customers are segmented using business-defined RFM rules.
3. Daily snapshots of segment sizes are stored in the database.
4. An automated n8n workflow runs daily to analyze segment trends.
5. Slack alerts are triggered only when predefined anomaly conditions are met.

---

## ✅ Outcomes
- Proactive detection of churn-risk escalation
- Reduced dependency on manual dashboard monitoring
- Architecture aligned with real-world, production-style monitoring systems

---

## 📌 Notes
This project uses Kaggle data to simulate a production environment.  
The architecture and logic are designed to be directly transferable to real-world systems with live transactional data.


## 🧠 System Architecture

