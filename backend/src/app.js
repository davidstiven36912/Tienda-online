const express = require('express');
const bodyParser = require('body-parser');
const multer = require('multer');
const path = require('path');
const productRouter = require('./routes/products');

const app = express();
const port = 3000;

// Middleware
app.use(bodyParser.json());
app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

// Routes
app.use('/api/products', productRouter);

// Start server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
