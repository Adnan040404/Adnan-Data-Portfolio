from flask import Flask, render_template, request
import joblib
import numpy as np

app = Flask(__name__)
model = joblib.load("C:\\Users\\ma578\\Music\\titanic\\models\\titanic_model.pkl")

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/predict', methods=['POST'])
def predict():
    features = [float(x) for x in request.form.values()]
    final_features = np.array(features).reshape(1, -1)
    prediction = model.predict(final_features)
    output = "Survived" if prediction[0] == 1 else "Not Survived"
    return render_template('index.html', prediction_text=f'Passenger {output}')

if __name__ == "__main__":
    app.run(debug=True)