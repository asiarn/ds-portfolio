# Credit Risk Classification

This project builds a binary classification model to assess loan applicants and identify potential credit risk. It simulates a real-world financial scenario where reducing false approvals can help mitigate loan default losses.

---

## Dataset

The dataset is sourced from Kaggle:
> [Credit Risk Dataset](https://www.kaggle.com/datasets/laotse/credit-risk-dataset)

Each row represents a loan applicant. The target column `loan_status` indicates:
- `0`: Good applicant (no default)
- `1`: Bad applicant (default)

---

## Objectives

- Build a classifier to distinguish between good and bad applicants
- Prioritize **recall** to reduce false negatives (missed risky applicants)
- Compare model performance on **imbalanced vs. balanced** datasets

---

## Tools & Techniques

- **Python, Pandas, Scikit-Learn**
- **Faker** for synthetic data validation
- **SMOTE** for class balancing
- **StandardScaler**, `LabelEncoder`, `OneHotEncoder`
- Models:
  - `DummyClassifier` (baseline)
  - `Logistic Regression`
  - `Random Forest Classifier`
- Evaluation metrics: Recall, Precision, F1 Score
