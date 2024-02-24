from flask import Flask, jsonify, request
from flask_cors import CORS

app = Flask(__name__)
CORS(app)

patients = []

@app.route('/patients', methods=['GET'])
def get_patients():
    return jsonify({'patients': patients})

@app.route('/patients', methods=['POST'])
def add_patient():
    data = request.get_json()
    patients.append(data)
    return jsonify({'message': 'Patient added successfully'}), 201

if __name__ == '__main__':
    app.run(debug=True)

