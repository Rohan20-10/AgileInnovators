const Merchant = require('../models/Merchant');
const Category = require('../models/Category');
const User = require('../models/User');
const bcrypt = require('bcryptjs');
const mongoose = require('mongoose');
const Address = require('../models/Address');

exports.verifyMerchant = async (req, res, next) => {
  try {
    const { merchantId } = req.params;

    const merchant = await Merchant.findById(merchantId);
    if (!merchant) {
      return res.status(404).json({ message: 'Merchant not found' });
    }

    merchant.verification_status = 'verified';
    await merchant.save();

    res.status(200).json({ message: 'Merchant verified successfully' });
  } catch (error) {
    console.error('Error in verifyMerchant:', error);
    next(error); // Pass the error to the next middleware
  }
};

exports.viewMerchantDetails = async (req, res, next) => {
  try {
    const { merchantId } = req.params;

    const merchant = await Merchant.findById(merchantId).populate('user_id').populate('business_address');
    if (!merchant) {
      return res.status(404).json({ message: 'Merchant not found' });
    }

    res.render('admin/viewMerchant', { merchant });
  } catch (error) {
    console.error('Error in viewMerchantDetails:', error);
    next(error); // Pass the error to the next middleware
  }
};


exports.showCreateCategoryPage = (req, res) => {
  res.render('admin/createCategory');
};

exports.createCategory = async (req, res, next) => {
  try {
    const { name, description } = req.body;

    const category = new Category({
      _id: new mongoose.Types.ObjectId(),
      name,
      description
    });

    await category.save();
    res.status(201).json({ message: 'Category created successfully' });
  } catch (error) {
    console.error('Error in createCategory:', error);
    next(error); // Pass the error to the next middleware
  }
};

exports.showAdminLoginPage = (req, res) => {
  res.render('admin/login');
};

exports.loginAdmin = async (req, res, next) => {
  try {
    const { email, password } = req.body;

    // Find the user by email
    const user = await User.findOne({ email, role: 'admin' });
    if (!user) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Check the password
    const isMatch = await bcrypt.compare(password, user.password);
    if (!isMatch) {
      return res.status(401).json({ message: 'Invalid email or password' });
    }

    // Set the user session
    req.session.user = user;

    res.status(200).json({ message: 'Login successful' });
  } catch (error) {
    console.error('Error in loginAdmin:', error);
    next(error); // Pass the error to the next middleware
  }
};


