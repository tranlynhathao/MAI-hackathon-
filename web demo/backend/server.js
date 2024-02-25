const express = require('express');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors());

const patients = [];

app.get('/patients', (req, res) => {
  res.json({ patients });
});

app.post('/patients', (req, res) => {
  const data = req.body;
  patients.push(data);
  res.status(201).json({ message: 'Patient added successfully' });
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
