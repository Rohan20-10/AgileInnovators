// server.js
const express = require('express');
const session = require('express-session');
const dotenv = require('dotenv');
const connectDB = require('./config/db'); // Correctly import connectDB
const User = require('./models/User');
// Set up routes for e-commerce platform
const authRoutes = require('./routes/auth');
const path = require('path'); 
const productRoutes = require('./routes/products');
// const orderRoutes = require('./routes/orders');
const adminRoutes = require('./routes/admin');
const merchantRoutes = require('./routes/merchant'); // Changed from sellerRoutes to merchantRoutes
const customerRoutes = require('./routes/customer'); // Add this line
const userRoutes = require('./routes/user'); // Add this line

dotenv.config();

const app = express();
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// Set up session middleware
app.use(session({
  secret: 'your_secret_key',
  resave: false,
  saveUninitialized: true,
  cookie: { secure: false } // Set to true if using HTTPS
}));

// Set view engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Connect to MongoDB
connectDB();

// Use routes
app.use('/api/auth', authRoutes);
app.use('/api/products', productRoutes);
// app.use('/api/orders', orderRoutes);
app.use('/api/admin', adminRoutes);
app.use('/api/merchant', merchantRoutes); // Changed from /api/seller to /api/merchant
app.use('/api/customer', customerRoutes); // Add this line

// Basic error handling
app.use((err, req, res, next) => {
  console.error('Error stack:', err.stack || 'No stack available');
  console.error('Error message:', err.message || 'No message available');
  console.error('Error details:', err);
  res.status(500).send('Something went wrong!');
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
