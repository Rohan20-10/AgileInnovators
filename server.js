// server.js
const express = require('express');
const session = require('express-session');
const passport = require('passport');
const LocalStrategy = require('passport-local').Strategy;
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
  cookie: { 
    secure: false, // Set to true if using HTTPS
    maxAge: 24 * 60 * 60 * 1000 // 24 hours
  }
}));

// Initialize Passport and restore authentication state, if any, from the session
app.use(passport.initialize());
app.use(passport.session());

// Passport configuration
passport.use(new LocalStrategy(
  { usernameField: 'email' },
  function(email, password, done) {
    User.findOne({ email: email }, function (err, user) {
      if (err) { return done(err); }
      if (!user) { return done(null, false, { message: 'Incorrect email.' }); }
      user.validPassword(password).then(isValid => {
        if (!isValid) { return done(null, false, { message: 'Incorrect password.' }); }
        return done(null, user);
      }).catch(err => done(err));
    });
  }
));

passport.serializeUser(function(user, done) {
  done(null, user.id);
});

passport.deserializeUser(function(id, done) {
  User.findById(id, function (err, user) {
    done(err, user);
  });
});

// Set view engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Connect to MongoDB
connectDB();

// Use routes
// app.use('/api/auth', authRoutes);
app.use('/api/products', productRoutes);
// app.use('/api/orders', orderRoutes);
app.use('/api/admin', adminRoutes);
app.use('/api/merchant', merchantRoutes); // Changed from /api/seller to /api/merchant
app.use('/api/customer', customerRoutes); // Add this line
app.use('/api/user', userRoutes); // Add this line

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
