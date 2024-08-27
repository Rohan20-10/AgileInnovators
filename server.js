// server.js
const express = require('express');
const dotenv = require('dotenv');
const connectDB = require('./config/db'); // Correctly import connectDB
const User = require('./models/User');

dotenv.config();

const app = express();

// Connect to MongoDB
connectDB();

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});