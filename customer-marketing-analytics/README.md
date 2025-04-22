# 🧠 Customer and Marketing Analytics

**Project Type:** Predictive Modeling (Churn & Lead Conversion)  
**Tools:** Python, Pandas, Scikit-learn, XGBoost, Matplotlib, Seaborn  
**Author:** Raisa  
**Cohort:** Pacmann Data Science Bootcamp

---

## 🧭 Project Overview

This project explores customer churn and lead conversion modeling for a tech education platform. Two separate datasets are analyzed:
- **Customer dataset** for churn analysis
- **Marketing leads dataset** for conversion scoring

The objective is to build models that help prioritize retention and improve lead quality.

---

## 🧪 Project Highlights

### 🧼 Data Cleaning
- Outlier detection and capping using IQR
- Missing values imputed using median/mode
- Grouped rare categories to reduce noise

### 🧠 Churn Modeling
- Features like `avg_time_spent`, `feedback`, and `membership_status` used
- XGBoost model trained with class imbalance correction
- Helped identify high-risk churn segments

### 🎯 Lead Scoring Model
- Predict likelihood of conversion using XGBoost
- Features ranked by importance
- Model explains lead quality via top drivers: time on site, source, tag, etc.

### 🔍 Business Impact
- Provides scoring to prioritize follow-ups
- Insights for improving marketing channels and user engagement strategy
