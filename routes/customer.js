const express = require('express');
const router = express.Router();
const { registerCustomer, showRegisterPage, showLoginPage, loginCustomer } = require('../controllers/customerController');
const { addToCart } = require('../controllers/cartController');

// Route to show the Customer registration page
router.get('/register', showRegisterPage);

// Route to handle the Customer registration form submission
router.post('/register', registerCustomer);

// Route to show the Customer login page
router.get('/login', showLoginPage);

// Route to handle the Customer login form submission
router.post('/login', loginCustomer);

// Route to add a product to the cart
router.post('/cart/add', addToCart);

module.exports = router;
