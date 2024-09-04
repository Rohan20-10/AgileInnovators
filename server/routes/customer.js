const express = require('express');
const router = express.Router();
const { registerCustomer, showRegisterPage, showLoginPage, loginCustomer } = require('../controllers/customerController');

// Route to show the Customer registration page
router.get('/register', showRegisterPage);

// Route to handle the Customer registration form submission
router.post('/register', registerCustomer);

// Route to show the Customer login page
router.get('/login', showLoginPage);

// Route to handle the Customer login form submission
router.post('/login', loginCustomer);



module.exports = router;
