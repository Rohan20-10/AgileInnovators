const express = require('express');
const router = express.Router();
const { getUserDetails } = require('../controllers/userController');

// Route to get the details of the user currently in session
router.get('/details', getUserDetails);

module.exports = router;
