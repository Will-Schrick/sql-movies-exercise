const express = require('express');
//const router = express.Router();
const app = express();
const port = 5432;

app.get('/', (req, res) => {
    res.send('Hello from docker for SQL!')
  });
  

app.listen(port, () => {
  console.log(`SQL EXERCISE DBeaver app listening on port ${port}`)
  })