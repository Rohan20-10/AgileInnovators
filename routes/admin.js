const express = require('express');
const router = express.Router();
const { verifyMerchant, showCreateCategoryPage, createCategory, showAdminLoginPage, loginAdmin, viewMerchantDetails } = require('../controllers/adminController');
// const auth = require('../middleware/auth');
// const adminAuth = require('../middleware/adminAuth');

// router.put('/verify-seller/:id', auth, adminAuth, verifySeller);

// Route to show the category creation page


router.get('/login', showAdminLoginPage);
router.post('/login', loginAdmin);

router.get('/create-category', showCreateCategoryPage);

// Route to handle the category creation form submission
router.post('/create-category', createCategory);

// Route to view merchant details
router.get('/view-merchant/:merchantId', viewMerchantDetails);

// Route to verify merchant
router.post('/verify-merchant/:merchantId', verifyMerchant);

module.exports = router;
