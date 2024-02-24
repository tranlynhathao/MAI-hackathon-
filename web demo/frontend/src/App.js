import React, { useState, useEffect } from 'react';
import axios from 'axios';
import 'bootstrap/dist/css/bootstrap.min.css';

function App() {
  const [patients, setPatients] = useState([]);
  const [name, setName] = useState('');
  const [age, setAge] = useState('');

  useEffect(() => {
    axios.get('http://localhost:5000/patients')
      .then(res => {
        setPatients(res.data.patients);
      })
      .catch(err => {
        console.error('Error fetching patients:', err);
      });
  }, []);

  const handleSubmit = (e) => {
    e.preventDefault();
    axios.post('http://localhost:5000/patients', { name, age })
      .then(res => {
        console.log(res.data.message);
        setName('');
        setAge('');
        // Refresh patient list after adding
        axios.get('http://localhost:5000/patients')
          .then(res => {
            setPatients(res.data.patients);
          })
          .catch(err => {
            console.error('Error fetching patients:', err);
          });
      })
      .catch(err => {
        console.error('Error adding patient:', err);
      });
  };

  return (
    <div className="container mt-5">
      <div className="card">
        <h5 className="card-header">Patients</h5>
        <div className="card-body">
          <form onSubmit={handleSubmit}>
            <div className="mb-3">
              <label htmlFor="name" className="form-label">Name:</label>
              <input type="text" className="form-control" id="name" value={name} onChange={e => setName(e.target.value)} />
            </div>
            <div className="mb-3">
              <label htmlFor="age" className="form-label">Age:</label>
              <input type="text" className="form-control" id="age" value={age} onChange={e => setAge(e.target.value)} />
            </div>
            <button type="submit" className="btn btn-primary">Add Patient</button>
          </form>
        </div>
        <ul className="list-group list-group-flush">
          {patients.map(patient => (
            <li key={patient.name} className="list-group-item">{patient.name} - {patient.age}</li>
          ))}
        </ul>
      </div>
    </div>
  );
}

export default App;



