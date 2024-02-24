from flask import Flask, request, jsonify
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
import pandas as pd
import joblib

app = Flask(__name__)

# Load the trained model from the pickle file
svm_model = joblib.load('svm_diabetes_model.pkl')

# Function to preprocess input data before prediction
def preprocess_input(features_data):
    # Convert input data from dict to DataFrame
    features_df = pd.DataFrame(features_data)
    # Standardize the input data
    scaler = StandardScaler()
    features_scaled = scaler.fit_transform(features_df)
    return features_scaled

# Define the route for predicting diabetes
@app.route('/predict', methods=['POST'])
def predict_diabetes():
    try:
        # Receive input data from the request
        features_data = request.json
        # Preprocess the input data
        features_scaled = preprocess_input(features_data)
        # Predict
        prediction = svm_model.predict(features_scaled)
        # Return the prediction result
        if prediction[0] == 0:
            return jsonify({"prediction": "Person hasn't Diabetes."})
        else:
            return jsonify({"prediction": "Person has Diabetes."})
    except Exception as e:
        return jsonify({"error": str(e)})

if __name__ == '__main__':
    app.run(debug=True, port=3500)