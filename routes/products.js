const express = require('express');
const router = express.Router();
const { getProductsByCategory } = require('../controllers/productController');

// Route to get products by category name
router.get('/category/:categoryName', getProductsByCategory);

module.exports = router;
