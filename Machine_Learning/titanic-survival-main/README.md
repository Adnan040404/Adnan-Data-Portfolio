Titanic Survival Prediction
This project predicts whether a passenger aboard the Titanic survived or not using machine learning. It includes data preprocessing, feature engineering, model training, and a Flask-based web app for predictions.

Features
Data Preprocessing: Handles missing values, encodes categorical variables, and creates new features.

Machine Learning: Uses XGBoost for survival prediction with hyperparameter tuning.

Web App: A Flask app with a clean, modern UI for user interaction.

Deployment: Ready for deployment on platforms like Heroku.

Technologies Used
Python

Flask

XGBoost

Pandas, NumPy, Scikit-learn

HTML, CSS

Setup Instructions
Clone the Repository:

bash
Copy
git clone https://github.com/Adnan040404/titanic-survival.git
cd titanic-survival
Install Dependencies:

bash
Copy
pip install -r requirements.txt
Run the Flask App:

bash
Copy
cd app
python app.py
Access the Web App:
Open your browser and go to:

Copy
http://127.0.0.1:5000/
Project Structure
Copy
titanic-survival/
├── app/
│   ├── static/
│   │   └── styles.css          # CSS for styling
│   ├── templates/
│   │   └── index.html          # HTML template
│   └── app.py                  # Flask app
├── models/
│   └── titanic_model.pkl       # Trained model
├── data/
│   └── titanic.csv             # Dataset
├── notebooks/
│   └── exploration.ipynb       # EDA and preprocessing
├── requirements.txt            # Dependencies
└── README.md                   # Project documentation
Usage
Enter passenger details in the web app form.

Click Predict Survival to see the result.

Screenshots
Home Page
Prediction Result

Contributing
Contributions are welcome! Open an issue or submit a pull request.

License
This project is licensed under the MIT License. See LICENSE for details.

Contact
For questions or feedback, reach out to:

Adnan
GitHub: Adnan040404
Email: adnandanish0404@gmail.com
