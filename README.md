# 🏠 Ames Housing Price Prediction

## 🎯 Objective
This project aims to predict house prices in Ames, Iowa, based on a dataset with 79 explanatory variables.  
It demonstrates **end-to-end data science workflow**: from data exploration to feature engineering, model training, evaluation, and stacking.  
On Kaggle, this solution ranked in the **Top 25% Leaderboard**.

---

## 📊 Dataset
- Source: [Kaggle Ames Housing Dataset](https://www.kaggle.com/c/house-prices-advanced-regression-techniques)  
- 1460 observations, 79 features (categorical, ordinal, and continuous).  
- Target: `SalePrice`.  

---

## ⚙️ Pipeline
1. **Exploratory Data Analysis (EDA)** — distributions, correlations, missing values.  
2. **Feature Engineering** — handling NAs, log transforms, encoding categorical variables, scaling.  
3. **Modeling** — regression models (Linear Regression, Ridge, Lasso, Random Forest, XGBoost, LightGBM).  
4. **Stacking** — ensemble with Ridge as meta-model.  
5. **Evaluation** — RMSE, R², cross-validation.  

---

## 🚀 Results
- **Baseline (Linear Regression)**: RMSE ~0.21 (log error).  
- **Tree-based models (XGBoost, LightGBM)**: improved performance significantly.  
- **Final stacking (Ridge meta-model)**: **Top 25% Kaggle Leaderboard**.  

---

## 📂 Repository structure
kaggle-house/
├── README.md
├── requirements.txt
├── LICENSE
├── .gitignore
│
├── data/
│ ├── raw/ # Original Kaggle dataset
│ ├── processed/ # Cleaned & feature-engineered dataset
│
├── notebooks/
│ ├── 01_EDA.ipynb
│ ├── 02_FeatureEng.ipynb
│ ├── 03_Modeling.ipynb
│ ├── 04_Evaluation.ipynb
│ └── 05_Stacking.ipynb
│
├── src/
│ ├── data_prep.py
│ ├── train.py
│ └── evaluate.py
│
├── models/
│ ├── baseline_model.pkl
│ ├── final_model.pkl
│ └── model_card.md
│
└── reports/
└── figures/


---

## 🛠️ How to run
### Install dependencies
```bash
git clone https://github.com/driksey/ames-housing-price-prediction.git
cd ames-housing-price-prediction
pip install -r requirements.txt
