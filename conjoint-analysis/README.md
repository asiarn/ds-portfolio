# 📊 Conjoint Analysis for Customer Support Preferences

This project applies **conjoint analysis** to identify which support and certification features are most valued by learners in an education tech product. Conjoint analysis helps simulate trade-offs users make when evaluating product combinations.

---

## 📚 Project Highlights

### 🔧 Survey Design
- Generated combinations from 3 key attributes:
  - Learning Support (e.g., Self-Study, Mentorship)
  - Price (multiple tiers)
  - Certification Type
- Balanced experimental design ensures each level appears with near-equal frequency.

### 📋 Survey Simulation
- Survey questions constructed with randomized 3-choice profiles + 1 “none of the above”
- Respondent behavior simulated assuming 25–30 questions per user
- Survey variants created for both ad-acquired and organic leads

### 📈 Insights & Utility
- Potential to derive **part-worth utilities** (not modeled here)
- Offers input for pricing, support packaging, and go-to-market strategy

---

## 🗂 Folder Guide

| Folder         | Description                                   |
|----------------|-----------------------------------------------|
| `notebooks/`   | Conjoint logic & survey design notebook       |
| `data/`        | Input data for ad/organic segments            |

---

## 🧠 Key Learnings

- Hands-on practice designing **discrete choice experiments**
- Attribute balancing techniques
- Utility modeling insights for product-market fit
