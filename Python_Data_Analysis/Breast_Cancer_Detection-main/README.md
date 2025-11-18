🩺 Breast Cancer Detection - Classification

A machine learning project for Breast Cancer Detection using PyCaret.
We build and compare multiple classification algorithms to detect whether a tumor is Malignant (M) or Benign (B).


📊 Dataset Information

The dataset is derived from a digitized image of a fine needle aspirate (FNA) of a breast mass.
Features describe characteristics of the cell nuclei present in the image.

🔗 Download Dataset: Kaggle - Breast Cancer Wisconsin Dataset

Attribute Details

ID number

Diagnosis → M = Malignant, B = Benign

Ten real-valued features are computed for each cell nucleus:

Radius – mean distance from center to perimeter points

Texture – standard deviation of gray-scale values

Perimeter

Area

Smoothness – local variation in radius lengths

Compactness – (perimeter² / area - 1.0)

Concavity – severity of concave portions of the contour

Concave points – number of concave portions of the contour

Symmetry

Fractal dimension – "coastline approximation" - 1

👉 For each feature, Mean, Standard Error, and Worst (largest values) are calculated → total 30 features.

📌 Example:

Field 3 = Mean Radius

Field 13 = Radius SE

Field 23 = Worst Radius

Dataset Stats

Total Samples: 569

Features: 30

Target Classes: 2 (M / B)

Class Distribution:

357 Benign

212 Malignant

Missing Values: None

🛠️ Libraries Used

pandas – Data handling

matplotlib – Visualization

seaborn – Visualization

pycaret – Machine Learning

🤖 Machine Learning Models

The following algorithms were compared using PyCaret’s classification module:

Logistic Regression

Decision Tree

Random Forest

Extra Trees

XGBoost

LightGBM

CatBoost

🏆 Results

Best Model AUC: 99.47%

🚀 Steps to Run

Clone this repository

Install dependencies

pip install pandas matplotlib seaborn pycaret


Run the notebook / script

✅ A simple yet powerful end-to-end ML pipeline for breast cancer classification.

Author : Muhammad Adnan