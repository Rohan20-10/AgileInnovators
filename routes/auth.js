const express = require('express');
const router = express.Router();

// Import controllers from their respective files
const { registerCustomer } = require('../controllers/customerController');
const { registerMerchant } = require('../controllers/merchantController');
// TODO: Implement loginUser in a separate controller file

router.post('/register/customer', registerCustomer);
router.post('/register/merchant', registerMerchant);
// TODO: Implement login route once loginUser controller is created
// router.post('/login', loginUser);

module.exports = router;
