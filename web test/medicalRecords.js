function renderRecord(record) {
    return "\n        <div class=\"record\">\n            <h3>Patient Name: ".concat(record.patientName, "</h3>\n            <p>Diagnosis: ").concat(record.diagnosis, "</p>\n        </div>\n    ");
}
function displayRecords(records) {
    var recordsContainer = document.getElementById('recordsContainer');
    if (recordsContainer) {
        recordsContainer.innerHTML = records.map(renderRecord).join('');
    }
}
function handleFormSubmit(event) {
    event.preventDefault();
    var patientNameInput = document.getElementById('patientName');
    var diagnosisInput = document.getElementById('diagnosis');
    var patientName = patientNameInput.value.trim();
    var diagnosis = diagnosisInput.value.trim();
    if (patientName && diagnosis) {
        var newRecord = {
            patientName: patientName,
            diagnosis: diagnosis
        };
        console.log('New Record:', newRecord);
        patientNameInput.value = '';
        diagnosisInput.value = '';
    }
    else {
        alert('Please fill in all fields');
    }
}
var recordForm = document.getElementById('recordForm');
if (recordForm) {
    recordForm.addEventListener('submit', handleFormSubmit);
}
