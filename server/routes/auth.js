const express = require('express');
const router = express.Router();

// Import controllers from their respective files
const { registerCustomer } = require('../controllers/customerController');
const { registerMerchant } = require('../controllers/merchantController');
const { loginUser } = require('../controllers/authController');

router.post('/register/customer', registerCustomer);
router.post('/register/merchant', registerMerchant);
router.post('/login', loginUser);

module.exports = router;
