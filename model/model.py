from pandas import read_csv
from sklearn.model_selection import train_test_split
from sklearn.metrics import classification_report, confusion_matrix, accuracy_score
import pandas as pd
from sklearn.preprocessing import StandardScaler
from sklearn.svm import SVC
from sklearn.model_selection import GridSearchCV
from joblib import dump

# Read data from CSV file
data = read_csv('diabetes.csv')

# Define features and labels
X = data.drop("Outcome", axis="columns")
y = data['Outcome']

# Standardize the data
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)

# Split the data into training and testing sets
X_train, X_test, y_train, y_test = train_test_split(X_scaled, y, test_size=0.20) # Can add random_state value

print("X_train shape:", X_train.shape)
print("X_test shape:", X_test.shape)

# Build SVM model
svm_model = SVC()
svm_model.fit(X_train, y_train)

# Predictions on the test set
y_pred = svm_model.predict(X_test)

# Evaluate the model performance
print("Confusion Matrix:\n", confusion_matrix(y_test, y_pred))
print("\nClassification Report:\n", classification_report(y_test, y_pred))
print("\nAccuracy Score:", accuracy_score(y_test, y_pred))

# print("\n---------\n")
#
# # Values for GridSearchCV object
# param_grid = {
#     'C': [0.1, 1, 10, 100],
#     'gamma': [1, 0.1, 0.01, 0.001],
#     'kernel': ['linear', 'rbf', 'poly', 'sigmoid']
# }
#
# # Create a GridSearchCV object
# grid = GridSearchCV(SVC(), param_grid, refit=True, verbose=3, cv=5)
#
# # Fit the model to the training data
# grid.fit(X_train, y_train)
#
# # Display the best results and corresponding hyperparameters
# print("Best parameters found:", grid.best_params_)
# print("Best estimator found:", grid.best_estimator_)
#
# # Predictions on the test set
# y_pred = grid.predict(X_test)
#
# # Evaluate the model performance
# print("Confusion Matrix:\n", confusion_matrix(y_test, y_pred))
# print("\nClassification Report:\n", classification_report(y_test, y_pred))
# print("\nAccuracy Score:", accuracy_score(y_test, y_pred))

print("\n---------\n")

# Predictions for a new patient
features_data = {
    "Pregnancies": [9],
    "Glucose": [156],
    "BloodPressure": [86],
    "SkinThickness": [0],
    "Insulin": [0],
    "BMI": [24.8],
    "DiabetesPedigreeFunction": [0.230],
    "Age": [53]
}

outcome_pred = svm_model.predict(pd.DataFrame(features_data))
print(outcome_pred)

if outcome_pred[0] == 0:
    print("Person hasn't Diabetes.")
else:
    print("Person has Diabetes")

# Save the model to file
dump(svm_model, 'svm_diabetes_model.pkl')
