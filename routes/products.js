const express = require('express');
const router = express.Router();
const { ensureAuthenticated, attachUserFromSession } = require('../middleware/auth');
const { getProductsByCategory } = require('../controllers/productController');

// Use attachUserFromSession middleware to attach user object to response locals
router.use(attachUserFromSession);

// Route to get products by category
router.get('/category/:categoryName', getProductsByCategory);

module.exports = router;
