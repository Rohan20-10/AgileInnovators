const express = require('express');
const router = express.Router();
const { upload } = require('../config/cloudinary');
const { registerMerchant, showRegisterPage, addProduct, showAddProductPage, loginMerchant, showLoginPage } = require('../controllers/merchantController');

// Add console.log statements to check if the functions are defined
console.log('showRegisterPage:', showRegisterPage);
console.log('registerMerchant:', registerMerchant);

// Route to show the Merchant login page
router.get('/login', showLoginPage);

// Route to handle the Merchant login form submission
router.post('/login', loginMerchant);

// Route to show the Merchant registration page
router.get('/register', showRegisterPage);

// Route to handle the Merchant registration form submission
router.post('/register', registerMerchant);

// Route to show the Product addition page
router.get('/add-product', showAddProductPage);

// Route to handle the Product addition form submission
router.post('/add-product', upload.array('images', 10), addProduct);

module.exports = router;
