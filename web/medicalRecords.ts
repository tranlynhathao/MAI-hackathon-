interface MedicalRecord {
    patientName: string;
    diagnosis: string;
}

function renderRecord(record: MedicalRecord): string {
    return `
        <div class="record">
            <h3>Patient Name: ${record.patientName}</h3>
            <p>Diagnosis: ${record.diagnosis}</p>
        </div>
    `;
}

function displayRecords(records: MedicalRecord[]): void {
    const recordsContainer = document.getElementById('recordsContainer');
    if (recordsContainer) {
        recordsContainer.innerHTML = records.map(renderRecord).join('');
    }
}

function handleFormSubmit(event: Event): void {
    event.preventDefault();
    const patientNameInput = document.getElementById('patientName') as HTMLInputElement;
    const diagnosisInput = document.getElementById('diagnosis') as HTMLInputElement;

    const patientName = patientNameInput.value.trim();
    const diagnosis = diagnosisInput.value.trim();

    if (patientName && diagnosis) {
        const newRecord: MedicalRecord = {
            patientName,
            diagnosis
        };

        console.log('New Record:', newRecord);

        patientNameInput.value = '';
        diagnosisInput.value = '';
    } else {
        alert('Please fill in all fields');
    }
}

const recordForm = document.getElementById('recordForm');
if (recordForm) {
    recordForm.addEventListener('submit', handleFormSubmit);
}
